.class public Lcom/oculus/secure/trustedapp/CallerInfoHelper;
.super Ljava/lang/Object;
.source "CallerInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;,
        Lcom/oculus/secure/trustedapp/CallerInfoHelper$Api17Utils;
    }
.end annotation


# static fields
.field static final BASE64_FLAG:I = 0xb

.field static final CALLER_DOMAIN:Ljava/lang/String; = "d"

.field static final CALLER_INFO:Ljava/lang/String; = "_ci_"

.field static final CALLER_INFO_TIMEOUT:I = 0x2710

.field static final CREATION_TIME:Ljava/lang/String; = "t"

.field static final ENCODING:Ljava/lang/String; = "UTF-8"

.field static final INVALID_CLASS_NAME:Ljava/lang/String; = "com.facebook.class"

.field static final PENDING_INTENT_DEFAULT_FLAGS:I = 0x44000000

.field static final PENDING_INTENT_DEFAULT_REQUEST_CODE:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oculus/secure/trustedapp/CallerInfoHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;IILjava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "flags"    # I
    .param p4, "callerDomain"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException",
            "PendingIntentWithoutSetPackage"
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 65
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 66
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 67
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "extras":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 70
    const-string v2, "_ci_"

    .line 71
    invoke-static {p1, p2, p3, p4}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->generateCallerInfo(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    invoke-virtual {p0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "extras":Landroid/os/Bundle;
    :goto_0
    return-object p0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v2, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerDomain"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x0

    const/high16 v1, 0x44000000    # 512.0f

    invoke-static {p0, p1, v0, v1, p2}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static attachCallerInfoCatchException(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerDomain"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 113
    .end local p0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object p0

    .line 110
    .restart local p0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static encodeCallerInfoMetaData(Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .param p0, "callerDomain"    # Ljava/lang/String;
    .param p1, "creationTime"    # J

    .prologue
    const/4 v3, 0x0

    .line 262
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 266
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "t"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    if-eqz p0, :cond_0

    .line 270
    const-string v4, "d"

    invoke-virtual {v2, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 279
    .local v0, "data":[B
    const/16 v4, 0xb

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 282
    .end local v0    # "data":[B
    :goto_0
    return-object v3

    .line 272
    :catch_0
    move-exception v1

    .line 274
    .local v1, "exception":Lorg/json/JSONException;
    goto :goto_0

    .line 280
    .end local v1    # "exception":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 282
    .local v1, "exception":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public static enforceValidCallerInfo(Landroid/content/Intent;)V
    .locals 3
    .param p0, "launchingIntent"    # Landroid/content/Intent;

    .prologue
    .line 230
    invoke-static {p0}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;)Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->isValid:Z

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller info in incoming intent!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    return-void
.end method

.method private static extractMetaDataFromPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 9
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 294
    const/4 v2, 0x0

    .line 295
    .local v2, "metaData":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 296
    const-class v3, Landroid/app/PendingIntent;

    const-string v4, "getTag"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 297
    .local v1, "m":Ljava/lang/reflect/Method;
    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v7

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "metaData":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 303
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .restart local v2    # "metaData":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 298
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 299
    const-class v3, Landroid/app/PendingIntent;

    const-string v4, "getIntent"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 300
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 301
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static generateCallerInfo(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .param p3, "callerDomain"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p3, v2, v3}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->encodeCallerInfoMetaData(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "metaData":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/secure/pendingintent/SecurePendingIntent;->builder()Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;

    move-result-object v1

    .line 256
    invoke-virtual {v1, v0}, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->setAction(Ljava/lang/String;)Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;

    move-result-object v1

    .line 257
    invoke-static {p0}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->getRandomizedComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->setComponentName(Landroid/content/ComponentName;)Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;

    move-result-object v1

    .line 258
    invoke-virtual {v1, p0, p1, p2}, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->buildCallerInfoForActivity(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getCallerInfo(Landroid/content/Intent;)Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;
    .locals 1
    .param p0, "launchingIntent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DeprecatedMethod"
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;Z)Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Intent;Z)Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;
    .locals 15
    .param p0, "launchingIntent"    # Landroid/content/Intent;
    .param p1, "enforceTimeout"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DeprecatedMethod"
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->isOnOrAboveApi17()Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v8, 0x1

    .line 155
    .local v8, "isValid":Z
    :goto_0
    const/4 v2, -0x1

    .line 156
    .local v2, "callerUid":I
    const/4 v1, 0x0

    .line 157
    .local v1, "callerPackageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 159
    .local v0, "callerDomain":Ljava/lang/String;
    const-string v12, "_ci_"

    invoke-virtual {p0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 160
    const-string v12, "_ci_"

    invoke-virtual {p0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .line 162
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v11, :cond_3

    .line 165
    invoke-static {}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->isOnOrAboveApi17()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 166
    invoke-static {v11}, Lcom/oculus/secure/trustedapp/CallerInfoHelper$Api17Utils;->getCreatorPackage(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    .line 170
    :goto_1
    invoke-static {}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->isOnOrAboveApi17()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 171
    invoke-static {v11}, Lcom/oculus/secure/trustedapp/CallerInfoHelper$Api17Utils;->getCreatorUid(Landroid/app/PendingIntent;)I

    move-result v2

    .line 175
    :cond_0
    const/4 v9, 0x0

    .line 177
    .local v9, "metaData":Ljava/lang/String;
    :try_start_0
    invoke-static {v11}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->extractMetaDataFromPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 190
    :goto_2
    if-eqz v9, :cond_3

    .line 191
    const/16 v12, 0xb

    invoke-static {v9, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 193
    .local v3, "data":[B
    :try_start_1
    new-instance v6, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v6, v3, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 194
    .local v6, "decoded":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    .local v10, "metaDataJson":Lorg/json/JSONObject;
    const-string v12, "t"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 202
    .local v4, "creationTime":J
    const-string v12, "d"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 203
    const-string v12, "d"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13, v4, v5}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->isValidTimestamp(JJ)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v12

    if-nez v12, :cond_2

    if-nez p1, :cond_3

    .line 208
    :cond_2
    const/4 v8, 0x1

    .line 224
    .end local v3    # "data":[B
    .end local v4    # "creationTime":J
    .end local v6    # "decoded":Ljava/lang/String;
    .end local v9    # "metaData":Ljava/lang/String;
    .end local v10    # "metaDataJson":Lorg/json/JSONObject;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3
    :goto_3
    if-eqz v8, :cond_6

    .line 225
    invoke-static {v2, v1, v0}, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->createValid(ILjava/lang/String;Ljava/lang/String;)Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;

    move-result-object v12

    .line 226
    :goto_4
    return-object v12

    .line 154
    .end local v0    # "callerDomain":Ljava/lang/String;
    .end local v1    # "callerPackageName":Ljava/lang/String;
    .end local v2    # "callerUid":I
    .end local v8    # "isValid":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 167
    .restart local v0    # "callerDomain":Ljava/lang/String;
    .restart local v1    # "callerPackageName":Ljava/lang/String;
    .restart local v2    # "callerUid":I
    .restart local v8    # "isValid":Z
    .restart local v11    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_5
    invoke-virtual {v11}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 178
    .restart local v9    # "metaData":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 179
    .local v7, "exception":Ljava/lang/NoSuchMethodException;
    const/4 v8, 0x0

    .line 187
    goto :goto_2

    .line 181
    .end local v7    # "exception":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v7

    .line 182
    .local v7, "exception":Ljava/lang/reflect/InvocationTargetException;
    const/4 v8, 0x0

    .line 187
    goto :goto_2

    .line 184
    .end local v7    # "exception":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v7

    .line 185
    .local v7, "exception":Ljava/lang/IllegalAccessException;
    const/4 v8, 0x0

    goto :goto_2

    .line 210
    .end local v7    # "exception":Ljava/lang/IllegalAccessException;
    .restart local v3    # "data":[B
    :catch_3
    move-exception v7

    .line 212
    .local v7, "exception":Ljava/io/UnsupportedEncodingException;
    const/4 v8, 0x0

    .line 219
    goto :goto_3

    .line 213
    .end local v7    # "exception":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v7

    .line 215
    .local v7, "exception":Lorg/json/JSONException;
    const/4 v8, 0x0

    .line 219
    goto :goto_3

    .line 216
    .end local v7    # "exception":Lorg/json/JSONException;
    :catch_5
    move-exception v7

    .line 218
    .local v7, "exception":Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    goto :goto_3

    .line 225
    .end local v3    # "data":[B
    .end local v7    # "exception":Ljava/lang/NumberFormatException;
    .end local v9    # "metaData":Ljava/lang/String;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 226
    invoke-static {v12, v13, v14}, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->createInvalid(ILjava/lang/String;Ljava/lang/String;)Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;

    move-result-object v12

    goto :goto_4
.end method

.method private static getRandomizedComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.facebook.class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1
.end method

.method static isOnOrAboveApi17()Z
    .locals 2

    .prologue
    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isValidTimestamp(JJ)Z
    .locals 4
    .param p0, "currentTime"    # J
    .param p2, "sentTime"    # J

    .prologue
    .line 236
    sub-long v0, p0, p2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    const-string v0, "_ci_"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "_ci_"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 128
    :cond_0
    return-object p0
.end method
