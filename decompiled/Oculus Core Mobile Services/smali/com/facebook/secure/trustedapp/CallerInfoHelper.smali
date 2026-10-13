.class public Lcom/facebook/secure/trustedapp/CallerInfoHelper;
.super Ljava/lang/Object;
.source "CallerInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/secure/trustedapp/CallerInfoHelper$Api17Utils;
    }
.end annotation


# static fields
.field static final ERROR_NULL_METADATA:Ljava/lang/String;

.field static final INVALID_CLASS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.facebook.class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->INVALID_CLASS:Ljava/lang/String;

    .line 55
    const-string v0, "Null metadata in caller identity, API=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->ERROR_NULL_METADATA:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;IILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException",
            "PendingIntentWithoutSetPackage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/secure/trustedapp/exception/CannotAttachCallerInfoException;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 79
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 84
    const-string v1, "_ci_"

    .line 85
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->generateCallerInfo(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-object p0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Lcom/facebook/secure/trustedapp/exception/CannotAttachCallerInfoException;

    invoke-direct {v1, v0}, Lcom/facebook/secure/trustedapp/exception/CannotAttachCallerInfoException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/secure/trustedapp/exception/CannotAttachCallerInfoException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    const/high16 v1, 0x44000000    # 512.0f

    invoke-static {p0, p1, v0, v1, p2}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static attachCallerInfoWithErrorReporting(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/secure/logger/Reporter;)Landroid/content/Intent;
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lcom/facebook/secure/trustedapp/exception/CannotAttachCallerInfoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 130
    :goto_0
    return-object p0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "CallerInfoHelper"

    const-string v2, "Error attaching caller info to Intent."

    invoke-interface {p3, v1, v2, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static encodeCallerInfoMetaData(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 324
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 328
    :try_start_0
    const-string v2, "t"

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    if-eqz p3, :cond_0

    .line 332
    const-string v2, "d"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    :cond_0
    if-eqz p2, :cond_1

    .line 337
    const-string v2, "v"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 345
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 346
    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    .line 347
    :catch_0
    move-exception v1

    goto :goto_0

    .line 339
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static extractMetaDataFromPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 358
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 359
    const-class v0, Landroid/app/PendingIntent;

    const-string v1, "getTag"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 360
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 362
    const-class v1, Landroid/app/PendingIntent;

    const-string v2, "getIntent"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 363
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 364
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static generateCallerInfo(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 305
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0, p3}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->encodeCallerInfoMetaData(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {}, Lcom/facebook/secure/pendingintent/SecurePendingIntent;->builder()Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;

    move-result-object v1

    .line 316
    invoke-virtual {v1, v0}, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->setAction(Ljava/lang/String;)Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->INVALID_CLASS:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, v1}, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->setComponentName(Landroid/content/ComponentName;)Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->buildForActivity(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 306
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static getCallerInfo(Landroid/content/Intent;)Lcom/facebook/secure/trustedapp/AppIdentity;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Lcom/facebook/secure/trustedapp/AppIdentity;
    .locals 13
    .param p1    # Lcom/facebook/secure/logger/Reporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DeprecatedMethod"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 179
    invoke-static {}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->isOnOrAboveApi17()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 186
    :goto_0
    const/4 v6, -0x1

    .line 191
    const-string v0, "_ci_"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    const-string v0, "_ci_"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 194
    if-eqz v0, :cond_5

    .line 197
    invoke-static {}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->isOnOrAboveApi17()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    invoke-static {v0}, Lcom/facebook/secure/trustedapp/CallerInfoHelper$Api17Utils;->getCreatorPackage(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v5

    .line 202
    :goto_1
    invoke-static {}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->isOnOrAboveApi17()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 203
    invoke-static {v0}, Lcom/facebook/secure/trustedapp/CallerInfoHelper$Api17Utils;->getCreatorUid(Landroid/app/PendingIntent;)I

    move-result v6

    .line 209
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->extractMetaDataFromPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    .line 219
    :goto_2
    if-eqz v1, :cond_4

    .line 221
    const/16 v7, 0xb

    :try_start_1
    invoke-static {v1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 222
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 223
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    const-string v1, "t"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 231
    const-string v1, "d"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 232
    const-string v1, "d"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 236
    :goto_3
    :try_start_2
    const-string v7, "v"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 237
    const-string v7, "v"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v7

    .line 241
    :goto_4
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9, v10, v11}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->isValidTimestamp(JJ)Z
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8

    move-result v8

    if-eqz v8, :cond_3

    :goto_5
    move v2, v4

    move-object v4, v7

    :goto_6
    move v0, v2

    move-object v2, v5

    move-object v5, v1

    move v1, v6

    .line 262
    :goto_7
    if-eqz v0, :cond_7

    new-instance v0, Lcom/facebook/secure/trustedapp/AppIdentity;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/secure/trustedapp/AppIdentity;-><init>(ILjava/lang/String;Lcom/facebook/secure/trustedapp/AppSignatureHash;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    return-object v0

    .line 183
    :cond_1
    const-string v0, "Skipping caller identity metadata check on API <= 17."

    invoke-static {p1, v0, v3}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->logToReporter(Lcom/facebook/secure/logger/Reporter;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v4

    goto/16 :goto_0

    .line 199
    :cond_2
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 214
    :goto_9
    const-string v1, "Error extracting metadata from caller identity."

    invoke-static {p1, v1, v0}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->logToReporter(Lcom/facebook/secure/logger/Reporter;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    move v0, v2

    goto :goto_2

    .line 244
    :cond_3
    :try_start_4
    const-string v4, "Caller identity has expired."

    const/4 v8, 0x0

    invoke-static {p1, v4, v8}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->logToReporter(Lcom/facebook/secure/logger/Reporter;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_8

    move v4, v0

    goto :goto_5

    .line 246
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v4, v3

    .line 250
    :goto_a
    const-string v7, "Error parsing metadata from caller identity."

    invoke-static {p1, v7, v0}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->logToReporter(Lcom/facebook/secure/logger/Reporter;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 253
    :cond_4
    sget-object v1, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->ERROR_NULL_METADATA:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->logToReporter(Lcom/facebook/secure/logger/Reporter;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    move-object v4, v3

    move v2, v0

    goto :goto_6

    .line 256
    :cond_5
    const-string v0, "Null caller identity intent extra."

    invoke-static {p1, v0, v3}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->logToReporter(Lcom/facebook/secure/logger/Reporter;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v3

    move-object v5, v3

    move v2, v1

    move-object v1, v3

    goto :goto_6

    .line 259
    :cond_6
    const-string v0, "Missing caller identity intent extra."

    invoke-static {p1, v0, v3}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->logToReporter(Lcom/facebook/secure/logger/Reporter;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v3

    move-object v4, v3

    move-object v2, v3

    move v0, v1

    move v1, v6

    goto :goto_7

    :cond_7
    move-object v0, v3

    .line 262
    goto :goto_8

    .line 210
    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_9

    .line 246
    :catch_4
    move-exception v0

    move-object v4, v3

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v4, v7

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v1, v3

    move-object v4, v3

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v4, v3

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v4, v7

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v1, v3

    move-object v4, v3

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v4, v3

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v4, v7

    goto :goto_a

    :cond_8
    move-object v7, v3

    goto :goto_4

    :cond_9
    move-object v1, v3

    goto/16 :goto_3
.end method

.method static isOnOrAboveApi17()Z
    .locals 2

    .prologue
    .line 378
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

    .prologue
    .line 286
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

.method private static logToReporter(Lcom/facebook/secure/logger/Reporter;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Lcom/facebook/secure/logger/Reporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 371
    if-nez p0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v0, "CallerInfoHelper"

    invoke-interface {p0, v0, p1, p2}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
