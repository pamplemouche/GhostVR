.class public Lcom/oculus/vrshell/home/module/SocialModule;
.super Ljava/lang/Object;
.source "SocialModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_CURRENT_FACEBOOK_ACCOUNT:Ljava/lang/String; = "com.oculus.fbconnect.UPDATE_CURRENT_FACEBOOK_ACCOUNT"

.field private static final FACEBOOK_ACCESS_TOKEN_KEY:Ljava/lang/String; = "access_token"

.field private static final FACEBOOK_KATANA_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.katana"

.field private static final FACEBOOK_PROFILE_KEY:Ljava/lang/String; = "profile"

.field private static final FACEBOOK_PROFILE_NAME_KEY:Ljava/lang/String; = "name"

.field private static final FACEBOOK_PROFILE_PICTURE_KEY:Ljava/lang/String; = "pic_square"

.field private static final FACEBOOK_UID_KEY:Ljava/lang/String; = "uid"

.field private static final FACEBOOK_WAKIZASHI_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.wakizashi"

.field private static final GSON:Lcom/google/gson/Gson;

.field private static final HORIZON_ACCESS_TOKEN_KEY:Ljava/lang/String; = "accesstoken"

.field private static final HORIZON_CONTENT_URI:Landroid/net/Uri;

.field private static final HORIZON_PROFILE_PICTURE_KEY:Ljava/lang/String; = "profile_picture"

.field private static final HORIZON_UID_KEY:Ljava/lang/String; = "userid"

.field private static final HORIZON_USER_NAME_KEY:Ljava/lang/String; = "user_name"

.field private static final MODULE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mFBConnectContentObserver:Landroid/database/ContentObserver;

.field private static mFBConnectContentResolver:Landroid/content/ContentResolver;

.field private static mInstance:Lcom/oculus/vrshell/home/module/SocialModule;

.field private static final mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public RVRCtxTag:J

.field private mContext:Landroid/content/Context;

.field private onFacebookConnectSuccessCallbackID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/String;

    const-string v1, "Social"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->MODULE_NAME:Ljava/lang/String;

    .line 34
    const-class v0, Lcom/oculus/vrshell/home/module/SocialModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->TAG:Ljava/lang/String;

    .line 44
    const-string v0, "content://com.oculus.horizon.fbconnect/account"

    .line 45
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->HORIZON_CONTENT_URI:Landroid/net/Uri;

    .line 58
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->GSON:Lcom/google/gson/Gson;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstance:Lcom/oculus/vrshell/home/module/SocialModule;

    .line 65
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    sput-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/SocialModule;->mContext:Landroid/content/Context;

    .line 94
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/SocialModule;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mFBConnectContentResolver:Landroid/content/ContentResolver;

    .line 97
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 99
    :try_start_0
    sput-object p0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstance:Lcom/oculus/vrshell/home/module/SocialModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->HORIZON_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mFBConnectContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->GSON:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/vrshell/home/module/SocialModule;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/SocialModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/module/SocialModule;->fetchFacebookAccountFromPackage(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/json/JSONObject;)Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/oculus/vrshell/home/module/SocialModule;->validateFacebookAccount(Lorg/json/JSONObject;)Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/vrshell/home/module/SocialModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/SocialModule;

    .prologue
    .line 32
    iget v0, p0, Lcom/oculus/vrshell/home/module/SocialModule;->onFacebookConnectSuccessCallbackID:I

    return v0
.end method

.method static synthetic access$700(Lcom/oculus/vrshell/home/module/SocialModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/SocialModule;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oculus/vrshell/home/module/SocialModule;->unregisterFBConnectContentObserver()V

    return-void
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "checkFBConnectAccount"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Landroid/util/Pair;

    const-string v2, "fetchFBConnectAccount"

    const-string v3, "i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Landroid/util/Pair;

    const-string v2, "fetchFacebookAccount"

    const-string v3, "i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Landroid/util/Pair;

    const-string v2, "onFacebookConnectSuccess"

    const-string v3, "i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-object v0
.end method

.method private fetchFacebookAccountFromPackage(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 231
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/SocialModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 235
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v0, 0x1000

    :try_start_0
    invoke-virtual {v9, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    const/4 v6, 0x0

    .line 244
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 245
    .local v8, "facebookAccount":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".provider.FirstPartyUserValuesProvider/user_values"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 248
    .local v1, "uri":Landroid/net/Uri;
    :try_start_1
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/SocialModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name=\'active_session_info\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 262
    :cond_0
    if-eqz v6, :cond_1

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_1
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 274
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "facebookAccount":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 238
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, v11

    .line 239
    goto :goto_0

    .line 258
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "facebookAccount":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 259
    .local v10, "throwable":Ljava/lang/Throwable;
    :try_start_3
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->TAG:Ljava/lang/String;

    const-string v2, "Unable to query Facebook data"

    invoke-static {v0, v2}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    if-eqz v6, :cond_2

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v11

    goto :goto_0

    .line 262
    .end local v10    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 269
    :catch_2
    move-exception v7

    .line 270
    .local v7, "e":Ljava/lang/NullPointerException;
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->TAG:Ljava/lang/String;

    const-string v2, "Received null when querying Facebook data"

    invoke-static {v0, v2}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v11

    .line 271
    goto :goto_0

    .line 272
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .line 273
    .local v7, "e":Lorg/json/JSONException;
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse queried Facebook data"

    invoke-static {v0, v2}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v11

    .line 274
    goto :goto_0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method

.method public static notifyFriendsChanged()V
    .locals 3

    .prologue
    .line 357
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 359
    :try_start_0
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstance:Lcom/oculus/vrshell/home/module/SocialModule;

    if-eqz v0, :cond_0

    .line 360
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstance:Lcom/oculus/vrshell/home/module/SocialModule;

    iget-wide v0, v0, Lcom/oculus/vrshell/home/module/SocialModule;->RVRCtxTag:J

    const-string v2, "onFriendsChangedEvent"

    invoke-static {v0, v1, v2}, Lcom/oculus/vrshell/home/module/SocialModule;->nativeEmitEvent(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 365
    return-void

    .line 363
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static notifyPartyChanged()V
    .locals 3

    .prologue
    .line 345
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 347
    :try_start_0
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstance:Lcom/oculus/vrshell/home/module/SocialModule;

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstance:Lcom/oculus/vrshell/home/module/SocialModule;

    iget-wide v0, v0, Lcom/oculus/vrshell/home/module/SocialModule;->RVRCtxTag:J

    const-string v2, "onPartyChangedEvent"

    invoke-static {v0, v1, v2}, Lcom/oculus/vrshell/home/module/SocialModule;->nativeEmitEvent(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 354
    return-void

    .line 351
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private registerFBConnectContentObserver()V
    .locals 4

    .prologue
    .line 333
    new-instance v0, Lcom/oculus/vrshell/home/module/SocialModule$5;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/oculus/vrshell/home/module/SocialModule$5;-><init>(Lcom/oculus/vrshell/home/module/SocialModule;Landroid/os/Handler;)V

    sput-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mFBConnectContentObserver:Landroid/database/ContentObserver;

    .line 341
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mFBConnectContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/oculus/vrshell/home/module/SocialModule;->HORIZON_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v3, Lcom/oculus/vrshell/home/module/SocialModule;->mFBConnectContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 342
    return-void
.end method

.method private unregisterFBConnectContentObserver()V
    .locals 2

    .prologue
    .line 325
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mFBConnectContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mFBConnectContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/oculus/vrshell/home/module/SocialModule;->mFBConnectContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 329
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mFBConnectContentObserver:Landroid/database/ContentObserver;

    goto :goto_0
.end method

.method private static validateFacebookAccount(Lorg/json/JSONObject;)Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;
    .locals 9
    .param p0, "facebookAccount"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 286
    if-nez p0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-object v6

    .line 292
    :cond_1
    :try_start_0
    const-string v7, "profile"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 298
    .local v3, "profile":Lorg/json/JSONObject;
    const-string v7, "uid"

    invoke-static {p0, v7}, Lcom/oculus/vrshell/home/module/SocialModule;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "uid":Ljava/lang/String;
    const-string v7, "name"

    invoke-static {v3, v7}, Lcom/oculus/vrshell/home/module/SocialModule;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "name":Ljava/lang/String;
    const-string v7, "access_token"

    invoke-static {p0, v7}, Lcom/oculus/vrshell/home/module/SocialModule;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "accessToken":Ljava/lang/String;
    const-string v7, "pic_square"

    invoke-static {v3, v7}, Lcom/oculus/vrshell/home/module/SocialModule;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "profilePicture":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 304
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 305
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 309
    new-instance v6, Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;

    invoke-direct {v6, v5, v2, v0, v4}, Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "profile":Lorg/json/JSONObject;
    .end local v4    # "profilePicture":Ljava/lang/String;
    .end local v5    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/oculus/vrshell/home/module/SocialModule;->TAG:Ljava/lang/String;

    const-string v8, "Corrupted Facebook account"

    invoke-static {v7, v8}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkFBConnectAccount()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.fbconnect.UPDATE_CURRENT_FACEBOOK_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/SocialModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public fetchFBConnectAccount(I)V
    .locals 3
    .param p1, "callbackID"    # I

    .prologue
    .line 133
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/vrshell/home/module/SocialModule$1;

    invoke-direct {v1, p0}, Lcom/oculus/vrshell/home/module/SocialModule$1;-><init>(Lcom/oculus/vrshell/home/module/SocialModule;)V

    new-instance v2, Lcom/oculus/vrshell/home/module/SocialModule$2;

    invoke-direct {v2, p0, p1}, Lcom/oculus/vrshell/home/module/SocialModule$2;-><init>(Lcom/oculus/vrshell/home/module/SocialModule;I)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 193
    return-void
.end method

.method public fetchFacebookAccount(I)V
    .locals 3
    .param p1, "callbackID"    # I

    .prologue
    .line 196
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/vrshell/home/module/SocialModule$3;

    invoke-direct {v1, p0}, Lcom/oculus/vrshell/home/module/SocialModule$3;-><init>(Lcom/oculus/vrshell/home/module/SocialModule;)V

    new-instance v2, Lcom/oculus/vrshell/home/module/SocialModule$4;

    invoke-direct {v2, p0, p1}, Lcom/oculus/vrshell/home/module/SocialModule$4;-><init>(Lcom/oculus/vrshell/home/module/SocialModule;I)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 228
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public onFacebookConnectSuccess(I)V
    .locals 2
    .param p1, "callbackID"    # I

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/oculus/vrshell/home/module/SocialModule;->registerFBConnectContentObserver()V

    .line 280
    iput p1, p0, Lcom/oculus/vrshell/home/module/SocialModule;->onFacebookConnectSuccessCallbackID:I

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.fbconnect.UPDATE_CURRENT_FACEBOOK_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/SocialModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method public shutdownModule()V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 121
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstance:Lcom/oculus/vrshell/home/module/SocialModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    sget-object v0, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/vrshell/home/module/SocialModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
