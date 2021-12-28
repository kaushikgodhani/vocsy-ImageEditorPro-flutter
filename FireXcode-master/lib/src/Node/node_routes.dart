import 'package:console_cmd/console_cmd.dart';
import 'package:firexcode/node_js.dart';
import 'package:firexcode/src/Generator/file.dart';

extension NodeRoutesFunction on NodeRoutes {
  /// Like /add/store
  NodeRoutesData toRoutes({
    String routeName,
    String method = 'get',
    bool create = false,
    bool read = false,
    bool update = false,
    bool delete = false,
    bool perIdDetail = false,
  }) {
//print(NodeJsList(list: data).code.toList().toString().replaceAll('[', '').replaceAll(']', ''));

    var adddatas = """

routes.$method('/', async (req, res) => {
     const v = new Validator(req.body, {
    ${NodeJsListValidator(list: data).code.toList().toString().replaceAll('[', '').replaceAll(']', '')}
      });
     
      const matched = await v.check();
     
      if (!matched) {
        res.status = 422;
        res.body = v.errors;
       res.json({
         status: 422,
         error: res.body
       });
        return;
      }else{
             const ${name.toLowerCase()} = new ${name.replaceAll('_', '')[0].toUpperCase()}${name.substring(1).replaceAll('_', '')}({
${NodeJsList(list: data).code.toList().toString().replaceAll('[', '').replaceAll(']', '')}
    });
   try{
     const dataSave = await  ${name.toLowerCase()}.save();
       res.status = 200;
            res.json({
              status: 200,
              message: "Data Save"
            });

   }catch (err){
       res.status = 401;

       res.json(err.message);

   }
      }
 
});



    """;

    var shoedata = '''
    routes.$method('/show', async (req, res) => {
try{
  const show = await  ${name.replaceAll('_', '')[0].toUpperCase()}${name.substring(1).replaceAll('_', '')} .find();
       res.status = 200;
            res.json({
              status: 200,
              result_$method: show
            });
}catch(err){
  res.json(err.message);
}
});
''';

    var speciceid = '''
    routes.$method('/:id', async (req, res) => {
try{
  const show = await  ${name.replaceAll('_', '')[0].toUpperCase()}${name.substring(1).replaceAll('_', '')} .findById(req.params.id);
       res.status = 200;
            res.status = 200;
            res.json({
              status: 200,
              result_$method: show
            });
}catch(err){
  res.json(message.err);
}
});
''';

    var deleteData = '''
    routes.delete('/delete/:id', async (req, res) => {
try{
  const dataDelete = await  ${name.replaceAll('_', '')[0].toUpperCase()}${name.substring(1).replaceAll('_', '')} .remove({_id: req.params.id});
       res.status = 200;
            res.json({
              status: 200,
              message: "Deleted"
            });
}catch(err){
  res.json(message.err);
}
});
''';

    var updateData = """

routes.patch('/:id', async (req, res) => {
     const v = new Validator(req.body, {
    ${NodeJsListValidator(list: data).code.toList().toString().replaceAll('[', '').replaceAll(']', '')}
      });
     
      const matched = await v.check();
     
      if (!matched) {
        res.status = 422;
        res.body = v.errors;
      res.json({
         status: 422,
         error: res.body
       });
        return;
      }else{
        
   try{
     const dataUpdate = await  ${name.replaceAll('_', '')[0].toUpperCase()}${name.substring(1).replaceAll('_', '')}.updateOne(
               {
                 _id: req.params.id
               },
               
             { \$set: {
${NodeJsList(list: data).code.toList().toString().replaceAll('[', '').replaceAll(']', '')}
    }}
    );
       res.status = 200;
            res.json({
              status: 200,
              message: "Updated"
            });

   }catch (err){
       res.status = 401;

       res.json(err);

   }
      }
 
});



    """;

    var content = """

    const express = require('express');
const { Validator } = require('node-input-validator');


const routes = express.Router();
const ${name.replaceAll('_', '')[0].toUpperCase()}${name.substring(1).replaceAll('_', '')} = require('../model/$name');
// Add routes

    ${create ? adddatas : ''}
    ${read ? shoedata : ''}
    ${perIdDetail ? speciceid : ''}
    ${delete ? deleteData : ''}
    ${update ? updateData : ''}
module.exports = routes;
    """;
    fileCreate(path + '/routes', content,
        '${routeName.toLowerCase().replaceAll('/', '_').toLowerCase()}_routes.js');

    ANSIPrinter().printRGB('''

--------------------------------------------------------------------------------------
const ${routeName.toLowerCase().replaceAll('/', '_').toLowerCase()} = require('./routes/${routeName.toLowerCase().replaceAll('/', '_')}_routes');
app.use('/$routeName', ${routeName.toLowerCase().replaceAll('/', '_').toLowerCase()}); 
--------------------------------------------------------------------------------------

### copy and pase your app.js if you are already paste then ignore
''', breakLine: true, fColor: 0xFFff6700);
    ANSIPrinter().printRGB('SuccessFully Generated',
        breakLine: true, bGray: 1.0, fColor: 0xff4BB543);
    return NodeRoutesData(data);
  }
}
