.class public Lcom/oculus/vrshell/util/CallerInfoHelper;
.super Ljava/lang/Object;
.source "CallerInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;,
        Lcom/oculus/vrshell/util/CallerInfoHelper$Api17Utils;
    }
.end annotation


# static fields
.field private static final BASE64_FLAG:I = 0xb

.field private static final CALLER_DOMAIN:Ljava/lang/String; = "d"

.field private static final CALLER_INFO:Ljava/lang/String; = "_ci_"

.field private static final CALLER_INFO_TIMEOUT:I = 0x2710

.field private static final CREATION_TIME:Ljava/lang/String; = "t"

.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final INVALID_CLASS_NAME:Ljava/lang/String; = "com.facebook.class"

.field private static final PENDING_INTENT_DEFAULT_FLAGS:I = 0x44000000

.field private static final PENDING_INTENT_DEFAULT_REQUEST_CODE:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/oculus/vrshell/util/CallerInfoHelper;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/CallerInfoHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;IILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException",
            "PendingIntentWithoutSetPackage"
        }
    .end annotation

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 63
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "_ci_"

    .line 69
    invoke-static {p1, p2, p3, p4}, Lcom/oculus/vrshell/util/CallerInfoHelper;->generateCallerInfo(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 68
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    sget-object p2, Lcom/oculus/vrshell/util/CallerInfoHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public static attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/high16 v1, 0x44000000    # 512.0f

    .line 88
    invoke-static {p0, p1, v0, v1, p2}, Lcom/oculus/vrshell/util/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;IILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static attachCallerInfoCatchException(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/oculus/vrshell/util/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method static encodeCallerInfoMetaData(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 238
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "t"

    .line 242
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string p1, "d"

    .line 246
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/16 p1, 0xb

    .line 255
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static enforceValidCallerInfo(Landroid/content/Intent;)V
    .locals 3

    .line 205
    invoke-static {p0}, Lcom/oculus/vrshell/util/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;)Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;->isValid:Z

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller info in incoming intent!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extractMetaDataFromPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 273
    const-class v0, Landroid/app/PendingIntent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getTag"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 274
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1

    .line 276
    const-class v0, Landroid/app/PendingIntent;

    const-string v2, "getIntent"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 277
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 278
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method static generateCallerInfo(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lcom/oculus/vrshell/util/CallerInfoHelper;->encodeCallerInfoMetaData(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 230
    invoke-static {}, Lcom/oculus/vrshell/util/SecurePendingIntent;->builder()Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0, p3}, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->setAction(Ljava/lang/String;)Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;

    move-result-object p3

    .line 232
    invoke-static {p0}, Lcom/oculus/vrshell/util/CallerInfoHelper;->getRandomizedComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->setComponentName(Landroid/content/ComponentName;)Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;

    move-result-object p3

    .line 233
    invoke-virtual {p3, p0, p1, p2}, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->buildCallerInfoForActivity(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getCallerInfo(Landroid/content/Intent;)Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DeprecatedMethod"
        }
    .end annotation

    const-string v0, "d"

    .line 139
    invoke-static {}, Lcom/oculus/vrshell/util/CallerInfoHelper;->isOnOrAboveApi17()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "_ci_"

    .line 144
    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    .line 145
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    if-eqz p0, :cond_4

    .line 150
    invoke-static {}, Lcom/oculus/vrshell/util/CallerInfoHelper;->isOnOrAboveApi17()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-static {p0}, Lcom/oculus/vrshell/util/CallerInfoHelper$Api17Utils;->getCreatorPackage(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    .line 155
    :goto_0
    invoke-static {}, Lcom/oculus/vrshell/util/CallerInfoHelper;->isOnOrAboveApi17()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    invoke-static {p0}, Lcom/oculus/vrshell/util/CallerInfoHelper$Api17Utils;->getCreatorUid(Landroid/app/PendingIntent;)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 162
    :goto_1
    :try_start_0
    invoke-static {p0}, Lcom/oculus/vrshell/util/CallerInfoHelper;->extractMetaDataFromPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object p0, v7

    const/4 v1, 0x0

    :goto_2
    if-eqz p0, :cond_3

    const/16 v8, 0xb

    .line 172
    invoke-static {p0, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 174
    :try_start_1
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, p0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 175
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "t"

    .line 178
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 183
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 184
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_2
    move-object p0, v7

    .line 188
    :goto_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Lcom/oculus/vrshell/util/CallerInfoHelper;->isValidTimestamp(JJ)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :catch_1
    move-object p0, v7

    :catch_2
    const/4 v1, 0x0

    goto :goto_4

    :cond_3
    move-object p0, v7

    goto :goto_4

    :cond_4
    move-object p0, v7

    move-object v3, p0

    const/4 v4, -0x1

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 200
    invoke-static {v4, v3, p0}, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;->createValid(ILjava/lang/String;Ljava/lang/String;)Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;

    move-result-object p0

    goto :goto_5

    .line 201
    :cond_6
    invoke-static {v6, v7, v7}, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;->createInvalid(ILjava/lang/String;Ljava/lang/String;)Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method private static getRandomizedComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.facebook.class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1
.end method

.method static isOnOrAboveApi17()Z
    .locals 2

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isValidTimestamp(JJ)Z
    .locals 1

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x2710

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static removeCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    const-string v0, "_ci_"

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
