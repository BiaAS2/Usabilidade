// Generated by DDC, the Dart Development Compiler (to JavaScript).
// Version: 2.19.2 (stable) (Tue Feb 7 18:37:17 2023 +0000) on "linux_x64"
// Module: zapp_user_main
// Flags: soundNullSafety(true), enableAsserts(true)
define('zapp_user_main', ['dart_sdk'], (function load__zapp_user_main(dart_sdk) {
  'use strict';
  const core = dart_sdk.core;
  const async = dart_sdk.async;
  const _interceptors = dart_sdk._interceptors;
  const js = dart_sdk.js;
  const ui = dart_sdk.ui;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  var $46zapp_entry = Object.create(dart.library);
  var main = Object.create(dart.library);
  var web_plugin_registrant = Object.create(dart.library);
  var $toString = dartx.toString;
  dart._checkModuleNullSafetyMode(true);
  dart._checkModuleRuntimeTypes(false);
  var T = {
    VoidTovoid: () => (T.VoidTovoid = dart.constFn(dart.fnType(dart.void, [])))(),
    ListOfString: () => (T.ListOfString = dart.constFn(core.List$(core.String)))(),
    ListOfStringTodynamic: () => (T.ListOfStringTodynamic = dart.constFn(dart.fnType(dart.dynamic, [T.ListOfString()])))(),
    JSArrayOfString: () => (T.JSArrayOfString = dart.constFn(_interceptors.JSArray$(core.String)))(),
    dynamicToNull: () => (T.dynamicToNull = dart.constFn(dart.fnType(core.Null, [dart.dynamic])))(),
    VoidToNull: () => (T.VoidToNull = dart.constFn(dart.fnType(core.Null, [])))(),
    ObjectAndStackTraceTovoid: () => (T.ObjectAndStackTraceTovoid = dart.constFn(dart.fnType(dart.void, [core.Object, core.StackTrace])))(),
    ZoneAndZoneDelegateAndZone__Tovoid: () => (T.ZoneAndZoneDelegateAndZone__Tovoid = dart.constFn(dart.fnType(dart.void, [async.Zone, async.ZoneDelegate, async.Zone, core.String])))()
  };
  const CT = Object.create({
    _: () => (C, CT)
  });
  dart.defineLazy(CT, {
    get C0() {
      return C[0] = dart.fn(main.main, T.VoidTovoid());
    }
  }, false);
  var C = [void 0];
  var I = ["file:///zapp/project/lib/main.dart"];
  $46zapp_entry.runAppGuarded = function runAppGuarded() {
    async.runZonedGuarded(core.Null, dart.fn(() => {
      if (T.ListOfStringTodynamic().is(C[0] || CT.C0)) {
        T.ListOfStringTodynamic().as(C[0] || CT.C0)(T.JSArrayOfString().of([]));
      } else {
        (C[0] || CT.C0)();
      }
      if (js.context.hasProperty("__notifyFlutterRendered")) {
        async.Future.delayed(new core.Duration.new({milliseconds: 250})).then(core.Null, dart.fn(_ => {
          js.context.callMethod("__notifyFlutterRendered", [false]);
        }, T.dynamicToNull()));
      }
    }, T.VoidToNull()), dart.fn((e, stackTrace) => {
      if (js.context.hasProperty("zappHandlerUserError")) {
        js.context.callMethod("zappHandlerUserError", [e[$toString](), stackTrace.toString()]);
      }
    }, T.ObjectAndStackTraceTovoid()), {zoneSpecification: new async._ZoneSpecification.new({print: dart.fn((self, parent, zone, line) => {
          if (js.context.hasProperty("zappHandlerUserPrint")) {
            js.context.callMethod("zappHandlerUserPrint", [line]);
          }
        }, T.ZoneAndZoneDelegateAndZone__Tovoid())})});
  };
  $46zapp_entry.main = function main$() {
    return async.async(dart.void, function* main() {
      yield ui.webOnlyWarmupEngine({runApp: dart.fn(() => {
          $46zapp_entry.runAppGuarded();
        }, T.VoidToNull()), registerPlugins: dart.fn(() => {
          web_plugin_registrant.registerPlugins();
        }, T.VoidToNull())});
    });
  };
  var nome$ = dart.privateName(main, "Produto.nome");
  var preco$ = dart.privateName(main, "Produto.preco");
  var codigo$ = dart.privateName(main, "Produto.codigo");
  var categoria$ = dart.privateName(main, "Produto.categoria");
  main.Produto = class Produto extends core.Object {
    get nome() {
      return this[nome$];
    }
    set nome(value) {
      this[nome$] = value;
    }
    get preco() {
      return this[preco$];
    }
    set preco(value) {
      this[preco$] = value;
    }
    get codigo() {
      return this[codigo$];
    }
    set codigo(value) {
      this[codigo$] = value;
    }
    get categoria() {
      return this[categoria$];
    }
    set categoria(value) {
      this[categoria$] = value;
    }
    static ['_#new#tearOff'](nome, preco, codigo, categoria) {
      return new main.Produto.new(nome, preco, codigo, categoria);
    }
    mostrarDetalhes() {
      core.print("Nome: " + this.nome);
      core.print("Preço: R$ " + dart.str(this.preco));
      core.print("Código: " + dart.str(this.codigo));
      core.print("Categoria: " + this.categoria);
    }
  };
  (main.Produto.new = function(nome, preco, codigo, categoria) {
    this[nome$] = nome;
    this[preco$] = preco;
    this[codigo$] = codigo;
    this[categoria$] = categoria;
    ;
  }).prototype = main.Produto.prototype;
  dart.addTypeTests(main.Produto);
  dart.addTypeCaches(main.Produto);
  dart.setMethodSignature(main.Produto, () => ({
    __proto__: dart.getMethods(main.Produto.__proto__),
    mostrarDetalhes: dart.fnType(dart.void, [])
  }));
  dart.setLibraryUri(main.Produto, I[0]);
  dart.setFieldSignature(main.Produto, () => ({
    __proto__: dart.getFields(main.Produto.__proto__),
    nome: dart.fieldType(core.String),
    preco: dart.fieldType(core.double),
    codigo: dart.fieldType(core.int),
    categoria: dart.fieldType(core.String)
  }));
  main.main = function main$0() {
    let produto1 = new main.Produto.new("Camiseta", 29.99, 1001, "Vestuário");
    let produto2 = new main.Produto.new("Notebook", 1499.99, 2002, "Eletrônicos");
    core.print("Detalhes do Produto 1:");
    produto1.mostrarDetalhes();
    core.print("\nDetalhes do Produto 2:");
    produto2.mostrarDetalhes();
  };
  web_plugin_registrant.registerPlugins = function registerPlugins() {
  };
  dart.trackLibraries("zapp_user_main", {
    "file:///zapp/project/.zapp_entry.dart": $46zapp_entry,
    "file:///zapp/project/lib/main.dart": main,
    "file:///zapp/project/.dart_tool/dartpad/web_plugin_registrant.dart": web_plugin_registrant
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["/zapp/project/.zapp_entry.dart","/zapp/project/lib/main.dart","/zapp/project/.dart_tool/dartpad/web_plugin_registrant.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AA2CI,IA1BF,iCAAgB;AACd,UAAoB,6BAGD;AAF8B,QAA9B,AAAkB,6BAElB,eAF2B;;AAEL,QAAF,CAApB;;AAEnB,UAAO,AAAQ,uBAAY;AAKvB,QAJK,AAAqC,qBAA7B,qCAAuB,uBAAW,QAAC;AAG9C,UAFC,AAAQ,sBAAW,2BAA2B,CAC/C;;;wBAIL,SAAC,GAAG;AACL,UAAO,AAAQ,uBAAY;AAIvB,QAHC,AAAQ,sBAAW,wBAAwB,CAC5C,AAAE,CAAD,eACD,AAAW,UAAD;;2DAGM,yCACb,SAAC,MAAM,QAAQ,MAAM;AAC1B,cAAO,AAAQ,uBAAY;AAC4B,YAAlD,AAAQ,sBAAW,wBAAwB,CAAC,IAAI;;;EAI3D;;AAEiB;AAQd,MAPD,MAAS,gCACC;AACS,UAAf;6CAEe;AACmB,UAAjB;;IAGvB;;;;;;;ICtDS;;;;;;IACA;;;;;;IACH;;;;;;IACG;;;;;;;;;;AAMe,MAApB,WAAM,AAAa,WAAL;AACY,MAA1B,WAAM,AAAmB,wBAAN;AACK,MAAxB,WAAM,AAAiB,sBAAP;AACc,MAA9B,WAAM,AAAuB,gBAAV;IACrB;;+BARa,MAAW,OAAY,QAAa;IAApC;IAAW;IAAY;IAAa;;EAAU;;;;;;;;;;;;;;;;AAavD,mBAAW,qBAAQ,YAAY,OAAO,MAAM;AAC5C,mBAAW,qBAAQ,YAAY,SAAS,MAAM;AAGnB,IAA/B,WAAM;AACoB,IAA1B,AAAS,QAAD;AAEyB,IAAjC,WAAM;AACoB,IAA1B,AAAS,QAAD;EACV;;ECrBwB","file":"main.js"}');
  // Exports:
  return {
    zapp__project__$46zapp_entry: $46zapp_entry,
    zapp__project__lib__main: main,
    zapp__project__$46dart_tool__dartpad__web_plugin_registrant: web_plugin_registrant
  };
}));

//# sourceMappingURL=main.js.map
