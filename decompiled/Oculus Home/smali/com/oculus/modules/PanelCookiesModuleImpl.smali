.class public Lcom/oculus/modules/PanelCookiesModuleImpl;
.super Lcom/oculus/modules/codegen/PanelCookiesModule;
.source "PanelCookiesModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    }
.end annotation


# static fields
.field private static final COOKIES_JSON_KEY:Ljava/lang/String; = "cookies"

.field private static final COOKIE_JSON_EXPIRES:Ljava/lang/String; = "expires"

.field private static final COOKIE_JSON_KEY:Ljava/lang/String; = "key"

.field private static final COOKIE_JSON_VALUE:Ljava/lang/String; = "value"

.field private static final DebugLog:Z = false

.field private static final MAX_DURATION_IN_SECONDS:I = 0x93a80

.field private static final PREF_COOKIES_KEY:Ljava/lang/String; = "Cookies"

.field private static final PREF_FILE_KEY:Ljava/lang/String; = "PanelCookies"

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_JSON_KEY:Ljava/lang/String; = "version"

.field private static final VERSION_JSON_VALUE:Ljava/lang/String; = "1.0"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCookies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/oculus/modules/PanelCookiesModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/PanelCookiesModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/oculus/modules/codegen/PanelCookiesModule;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mCookies:Ljava/util/HashMap;

    .line 65
    iput-object p1, p0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/oculus/modules/PanelCookiesModuleImpl;->initializeFromStorageState()V

    .line 67
    return-void
.end method

.method private static getJSONValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 215
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 214
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initializeFromStorageState()V
    .locals 24

    .prologue
    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mCookies:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 220
    const/16 v18, 0x0

    .line 224
    .local v18, "updateStorage":Z
    :try_start_0
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 225
    .local v13, "now":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "PanelCookies"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 226
    .local v15, "sharedPref":Landroid/content/SharedPreferences;
    const-string v21, "Cookies"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 227
    .local v11, "input":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 293
    .end local v11    # "input":Ljava/lang/String;
    .end local v13    # "now":Ljava/util/Date;
    .end local v15    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v11    # "input":Ljava/lang/String;
    .restart local v13    # "now":Ljava/util/Date;
    .restart local v15    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v7

    .line 231
    .local v7, "dateFormatInstance":Ljava/text/DateFormat;
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 232
    .local v17, "topObject":Lorg/json/JSONObject;
    const-string v21, "version"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/oculus/modules/PanelCookiesModuleImpl;->getJSONValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 233
    .local v20, "version":Ljava/lang/String;
    const-string v21, "1.0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 234
    sget-object v21, Lcom/oculus/modules/PanelCookiesModuleImpl;->TAG:Ljava/lang/String;

    const-string v22, "Cookies pref file version changed - Clear all cookies"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/oculus/modules/PanelCookiesModuleImpl;->updateStorageState()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v7    # "dateFormatInstance":Ljava/text/DateFormat;
    .end local v11    # "input":Ljava/lang/String;
    .end local v13    # "now":Ljava/util/Date;
    .end local v15    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v17    # "topObject":Lorg/json/JSONObject;
    .end local v20    # "version":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 286
    .local v16, "t":Ljava/lang/Throwable;
    sget-object v21, Lcom/oculus/modules/PanelCookiesModuleImpl;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failure to read cookies: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_2
    if-eqz v18, :cond_0

    .line 291
    invoke-direct/range {p0 .. p0}, Lcom/oculus/modules/PanelCookiesModuleImpl;->updateStorageState()V

    goto :goto_0

    .line 239
    .restart local v7    # "dateFormatInstance":Ljava/text/DateFormat;
    .restart local v11    # "input":Ljava/lang/String;
    .restart local v13    # "now":Ljava/util/Date;
    .restart local v15    # "sharedPref":Landroid/content/SharedPreferences;
    .restart local v17    # "topObject":Lorg/json/JSONObject;
    .restart local v20    # "version":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v21, "cookies"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 240
    .local v3, "allCookies":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 241
    .local v4, "arrayLength":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v4, :cond_2

    .line 243
    :try_start_2
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 246
    .local v5, "cookie":Lorg/json/JSONObject;
    const-string v21, "key"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1}, Lcom/oculus/modules/PanelCookiesModuleImpl;->getJSONValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 247
    .local v12, "key":Ljava/lang/String;
    const-string v21, "value"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1}, Lcom/oculus/modules/PanelCookiesModuleImpl;->getJSONValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 248
    .local v19, "value":Ljava/lang/String;
    const-string v21, "expires"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1}, Lcom/oculus/modules/PanelCookiesModuleImpl;->getJSONValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, "expiresAsString":Ljava/lang/String;
    if-eqz v9, :cond_4

    if-eqz v12, :cond_4

    if-nez v19, :cond_5

    .line 250
    :cond_4
    sget-object v21, Lcom/oculus/modules/PanelCookiesModuleImpl;->TAG:Ljava/lang/String;

    const-string v22, "Field missing in cookie"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 251
    const/16 v18, 0x1

    .line 241
    .end local v5    # "cookie":Lorg/json/JSONObject;
    .end local v9    # "expiresAsString":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 258
    .restart local v5    # "cookie":Lorg/json/JSONObject;
    .restart local v9    # "expiresAsString":Ljava/lang/String;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v7, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v8

    .line 264
    .local v8, "expires":Ljava/util/Date;
    :try_start_4
    invoke-virtual {v8, v13}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 265
    sget-object v21, Lcom/oculus/modules/PanelCookiesModuleImpl;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Detected expired cookie \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\' - Removing."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v18, 0x1

    goto :goto_2

    .line 259
    .end local v8    # "expires":Ljava/util/Date;
    :catch_1
    move-exception v16

    .line 260
    .restart local v16    # "t":Ljava/lang/Throwable;
    sget-object v21, Lcom/oculus/modules/PanelCookiesModuleImpl;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failure to parse date \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\': "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v18, 0x1

    goto :goto_2

    .line 271
    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v8    # "expires":Ljava/util/Date;
    :cond_6
    new-instance v6, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1, v8}, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;-><init>(Lcom/oculus/modules/PanelCookiesModuleImpl;Ljava/lang/String;Ljava/util/Date;)V

    .line 272
    .local v6, "cookieData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mCookies:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    .line 273
    .local v14, "previousValue":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    if-nez v14, :cond_7

    .line 274
    sget-object v21, Lcom/oculus/modules/PanelCookiesModuleImpl;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Detected valid cookie \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\' - Added."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 281
    .end local v5    # "cookie":Lorg/json/JSONObject;
    .end local v6    # "cookieData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    .end local v8    # "expires":Ljava/util/Date;
    .end local v9    # "expiresAsString":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "previousValue":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    .end local v19    # "value":Ljava/lang/String;
    :catch_2
    move-exception v16

    .line 282
    .restart local v16    # "t":Ljava/lang/Throwable;
    :try_start_5
    sget-object v21, Lcom/oculus/modules/PanelCookiesModuleImpl;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed parsing a cookie: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 276
    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v5    # "cookie":Lorg/json/JSONObject;
    .restart local v6    # "cookieData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    .restart local v8    # "expires":Ljava/util/Date;
    .restart local v9    # "expiresAsString":Ljava/lang/String;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v14    # "previousValue":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    .restart local v19    # "value":Ljava/lang/String;
    :cond_7
    :try_start_6
    sget-object v21, Lcom/oculus/modules/PanelCookiesModuleImpl;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Detected valid cookie \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\' - But replacing another one."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2
.end method

.method private internalAddCookie(Ljava/lang/String;Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;)V
    .locals 2
    .param p1, "cookieName"    # Ljava/lang/String;
    .param p2, "cookieData"    # Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mCookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    .line 158
    .local v0, "previousData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    iget-object v1, p0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mCookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p2, v0}, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/oculus/modules/PanelCookiesModuleImpl;->updateStorageState()V

    .line 168
    :cond_0
    return-void
.end method

.method private internalGetCookie(Ljava/lang/String;)Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    .locals 4
    .param p1, "cookieName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v2, p0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mCookies:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    .line 187
    .local v0, "cookieData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 205
    .end local v0    # "cookieData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    :cond_0
    :goto_0
    return-object v0

    .line 193
    .restart local v0    # "cookieData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    :cond_1
    iget-object v2, v0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->Expires:Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mCookies:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-direct {p0}, Lcom/oculus/modules/PanelCookiesModuleImpl;->updateStorageState()V

    move-object v0, v1

    .line 200
    goto :goto_0
.end method

.method private internalRemoveCookie(Ljava/lang/String;)V
    .locals 2
    .param p1, "cookieName"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mCookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    .line 172
    .local v0, "previousData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/oculus/modules/PanelCookiesModuleImpl;->updateStorageState()V

    .line 183
    :cond_0
    return-void
.end method

.method private updateStorageState()V
    .locals 13

    .prologue
    .line 299
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 300
    .local v9, "topObject":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 301
    .local v0, "allCookies":Lorg/json/JSONArray;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    .line 302
    .local v4, "dateFormatInstance":Ljava/text/DateFormat;
    iget-object v10, p0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mCookies:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 303
    .local v3, "cookieEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    .line 304
    .local v2, "cookieData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 305
    .local v1, "cookie":Lorg/json/JSONObject;
    const-string v11, "key"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v11, "value"

    iget-object v12, v2, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->Value:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v11, "expires"

    iget-object v12, v2, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->Expires:Ljava/util/Date;

    invoke-virtual {v4, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    .end local v0    # "allCookies":Lorg/json/JSONArray;
    .end local v1    # "cookie":Lorg/json/JSONObject;
    .end local v2    # "cookieData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    .end local v3    # "cookieEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;>;"
    .end local v4    # "dateFormatInstance":Ljava/text/DateFormat;
    .end local v9    # "topObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 325
    .local v8, "t":Ljava/lang/Throwable;
    sget-object v10, Lcom/oculus/modules/PanelCookiesModuleImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure to write cookies: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 310
    .restart local v0    # "allCookies":Lorg/json/JSONArray;
    .restart local v4    # "dateFormatInstance":Ljava/text/DateFormat;
    .restart local v9    # "topObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v10, "cookies"

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v10, "version"

    const-string v11, "1.0"

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, "output":Ljava/lang/String;
    iget-object v10, p0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mContext:Landroid/content/Context;

    const-string v11, "PanelCookies"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 320
    .local v7, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 321
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "Cookies"

    invoke-interface {v5, v10, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 322
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected DEV_ONLY_clearAllCookiesImpl()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mCookies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    invoke-direct {p0}, Lcom/oculus/modules/PanelCookiesModuleImpl;->updateStorageState()V

    .line 134
    return-void
.end method

.method protected DEV_ONLY_getAllCookieNamesImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mCookies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method protected DEV_ONLY_getCookieExpirationImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "cookieName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/oculus/modules/PanelCookiesModuleImpl;->internalGetCookie(Ljava/lang/String;)Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    move-result-object v0

    .line 144
    .local v0, "cookieData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->Expires:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 145
    return-void

    .line 144
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected DEV_ONLY_setCookieWithNoExpirationImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "cookieName"    # Ljava/lang/String;
    .param p2, "cookieValue"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 150
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 151
    new-instance v1, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, p0, p2, v2}, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;-><init>(Lcom/oculus/modules/PanelCookiesModuleImpl;Ljava/lang/String;Ljava/util/Date;)V

    .line 152
    .local v1, "cookieData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    invoke-direct {p0, p1, v1}, Lcom/oculus/modules/PanelCookiesModuleImpl;->internalAddCookie(Ljava/lang/String;Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;)V

    .line 153
    return-void
.end method

.method protected clearCookieImpl(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookieName"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/oculus/modules/PanelCookiesModuleImpl;->internalRemoveCookie(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method protected getCookieImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "cookieName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/oculus/modules/PanelCookiesModuleImpl;->internalGetCookie(Ljava/lang/String;)Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    move-result-object v0

    .line 119
    .local v0, "cookieData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->Value:Ljava/lang/String;

    :goto_0
    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 120
    return-void

    .line 119
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected marshallJSConstantCookiesAtStartup()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v1, "cookiesObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/oculus/modules/PanelCookiesModuleImpl;->mCookies:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .local v0, "cookieEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    iget-object v4, v4, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->Value:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/oculus/modules/PanelCookiesModuleImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not expose constant value for cookie \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0    # "cookieEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;>;"
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v1
.end method

.method protected setCookieImpl(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 5
    .param p1, "cookieName"    # Ljava/lang/String;
    .param p2, "cookieValue"    # Ljava/lang/String;
    .param p3, "durationInSeconds"    # D

    .prologue
    .line 97
    double-to-int v3, p3

    const v4, 0x93a80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 98
    .local v2, "durationToStoreInSeconds":I
    if-gtz v2, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/oculus/modules/PanelCookiesModuleImpl;->internalRemoveCookie(Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 108
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 109
    new-instance v1, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v1, p0, p2, v3}, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;-><init>(Lcom/oculus/modules/PanelCookiesModuleImpl;Ljava/lang/String;Ljava/util/Date;)V

    .line 110
    .local v1, "cookieData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    invoke-direct {p0, p1, v1}, Lcom/oculus/modules/PanelCookiesModuleImpl;->internalAddCookie(Ljava/lang/String;Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;)V

    goto :goto_0
.end method
