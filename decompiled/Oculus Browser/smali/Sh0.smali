.class public LSh0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:LSh0;

.field public static final c:[Ljava/lang/String;

.field public static final d:LdV;

.field public static final e:LdV;

.field public static final f:LaV;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LSh0;->a:Ljava/lang/Object;

    const-string v0, "com.google.android.instantapps.nmr1.INSTALL"

    const-string v1, "com.google.android.instantapps.nmr1.VIEW"

    const-string v2, "com.google.android.instantapps.START"

    .line 2
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LSh0;->c:[Ljava/lang/String;

    .line 3
    new-instance v0, LdV;

    const-string v1, "Android.InstantApps.HandleIntentDuration"

    invoke-direct {v0, v1}, LdV;-><init>(Ljava/lang/String;)V

    sput-object v0, LSh0;->d:LdV;

    .line 4
    new-instance v0, LdV;

    const-string v1, "Android.InstantApps.FallbackDuration"

    invoke-direct {v0, v1}, LdV;-><init>(Ljava/lang/String;)V

    sput-object v0, LSh0;->e:LdV;

    .line 5
    new-instance v0, LaV;

    const-string v1, "Android.InstantApps.CallSource"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LaV;-><init>(Ljava/lang/String;I)V

    sput-object v0, LSh0;->f:LaV;

    .line 6
    new-instance v0, LdV;

    const-string v1, "Android.InstantApps.ApiCallDurationWithApp"

    invoke-direct {v0, v1}, LdV;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v0, LdV;

    const-string v1, "Android.InstantApps.ApiCallDurationWithoutApp"

    invoke-direct {v0, v1}, LdV;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LSh0;
    .locals 2

    .line 1
    sget-object v0, LSh0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LSh0;->b:LSh0;

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, LSh0;

    invoke-direct {v1}, LSh0;-><init>()V

    .line 5
    sput-object v1, LSh0;->b:LSh0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    throw v1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, LSh0;->b:LSh0;

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 6

    .line 10
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.instantapps.supervisor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 12
    sget-object v0, LSh0;->c:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 13
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method
