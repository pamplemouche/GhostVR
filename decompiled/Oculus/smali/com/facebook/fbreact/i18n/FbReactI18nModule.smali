.class public Lcom/facebook/fbreact/i18n/FbReactI18nModule;
.super Lcom/facebook/fbreact/specs/NativeI18nSpec;
.source "FbReactI18nModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "I18n"
.end annotation


# instance fields
.field private final mLocales:Lcom/facebook/common/locale/ILocales;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/common/locale/ILocales;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeI18nSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 34
    iput-object p2, p0, Lcom/facebook/fbreact/i18n/FbReactI18nModule;->mLocales:Lcom/facebook/common/locale/ILocales;

    .line 35
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "I18n"

    return-object v0
.end method

.method protected getTypedExportedConstants()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_I18N_MODULE_CONSTANTS_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 45
    iget-object v0, p0, Lcom/facebook/fbreact/i18n/FbReactI18nModule;->mLocales:Lcom/facebook/common/locale/ILocales;

    invoke-static {v0}, Lcom/facebook/fbreact/i18n/FbJSi18nConstants;->getConstants(Lcom/facebook/common/locale/ILocales;)Ljava/util/Map;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_I18N_MODULE_CONSTANTS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 47
    return-object v0
.end method
