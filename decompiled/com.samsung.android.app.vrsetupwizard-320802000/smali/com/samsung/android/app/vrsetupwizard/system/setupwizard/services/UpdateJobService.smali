.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;
.super Landroid/app/job/JobService;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;


# static fields
.field static final synthetic a:[La/e/e;

.field public static b:Z

.field public static final c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/a;


# instance fields
.field private final d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

.field private final i:La/b;

.field private final j:La/b;

.field private final k:La/b;

.field private final l:La/b;

.field private final m:La/b;

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:J

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [La/e/e;

    new-instance v1, La/c/b/n;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    invoke-static {v2}, La/c/b/o;->a(Ljava/lang/Class;)La/e/b;

    move-result-object v2

    const-string v3, "mContext"

    const-string v4, "getMContext()Landroid/content/Context;"

    invoke-direct {v1, v2, v3, v4}, La/c/b/n;-><init>(La/e/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, La/c/b/o;->a(La/c/b/m;)La/e/g;

    move-result-object v1

    check-cast v1, La/e/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, La/c/b/n;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    invoke-static {v2}, La/c/b/o;->a(Ljava/lang/Class;)La/e/b;

    move-result-object v2

    const-string v3, "mNotificationManager"

    const-string v4, "getMNotificationManager()Landroid/app/NotificationManager;"

    invoke-direct {v1, v2, v3, v4}, La/c/b/n;-><init>(La/e/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, La/c/b/o;->a(La/c/b/m;)La/e/g;

    move-result-object v1

    check-cast v1, La/e/e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, La/c/b/n;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    invoke-static {v2}, La/c/b/o;->a(Ljava/lang/Class;)La/e/b;

    move-result-object v2

    const-string v3, "mNotificationHelper"

    const-string v4, "getMNotificationHelper()Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/NotificationHelper;"

    invoke-direct {v1, v2, v3, v4}, La/c/b/n;-><init>(La/e/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, La/c/b/o;->a(La/c/b/m;)La/e/g;

    move-result-object v1

    check-cast v1, La/e/e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, La/c/b/n;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    invoke-static {v2}, La/c/b/o;->a(Ljava/lang/Class;)La/e/b;

    move-result-object v2

    const-string v3, "mScenario"

    const-string v4, "getMScenario()I"

    invoke-direct {v1, v2, v3, v4}, La/c/b/n;-><init>(La/e/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, La/c/b/o;->a(La/c/b/m;)La/e/g;

    move-result-object v1

    check-cast v1, La/e/e;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, La/c/b/n;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    invoke-static {v2}, La/c/b/o;->a(Ljava/lang/Class;)La/e/b;

    move-result-object v2

    const-string v3, "autoUpdateEnabled"

    const-string v4, "getAutoUpdateEnabled()Z"

    invoke-direct {v1, v2, v3, v4}, La/c/b/n;-><init>(La/e/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, La/c/b/o;->a(La/c/b/m;)La/e/g;

    move-result-object v1

    check-cast v1, La/e/e;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->a:[La/e/e;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/a;-><init>(La/c/b/h;)V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const-string v0, "[UpdateJobService]"

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->g:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)V

    check-cast v0, La/c/a/a;

    invoke-static {v0}, La/c;->a(La/c/a/a;)La/b;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i:La/b;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/e;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/e;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)V

    check-cast v0, La/c/a/a;

    invoke-static {v0}, La/c;->a(La/c/a/a;)La/b;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->j:La/b;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/d;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/d;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)V

    check-cast v0, La/c/a/a;

    invoke-static {v0}, La/c;->a(La/c/a/a;)La/b;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->k:La/b;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/f;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/f;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)V

    check-cast v0, La/c/a/a;

    invoke-static {v0}, La/c;->a(La/c/a/a;)La/b;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->l:La/b;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/b;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)V

    check-cast v0, La/c/a/a;

    invoke-static {v0}, La/c;->a(La/c/a/a;)La/b;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->m:La/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/samsung/android/app/vrsetupwizard/common/b/g;)V
    .locals 11

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "samsungapps://CategoryList/0000005170"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "addFlags(Intent.FLAG_ACT\u2026.FLAG_ACTIVITY_CLEAR_TOP)"

    invoke-static {v1, v2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.oculus.horizon/.StartActivity"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->e()Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->r()Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0f00d0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->i()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f:Z

    return p0
.end method

.method private final c()Landroid/content/Context;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i:La/b;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->a:[La/e/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, La/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private final d()Landroid/app/NotificationManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->j:La/b;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->a:[La/e/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, La/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private final e()Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->k:La/b;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->a:[La/e/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, La/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    return-object v0
.end method

.method private final f()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->l:La/b;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->a:[La/e/e;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, La/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final g()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->m:La/b;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->a:[La/e/e;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, La/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final h()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startDownloadManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(IZZ)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a()V

    return-void
.end method

.method private final i()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stopSilentUpdate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->b(Landroid/content/Context;I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->b:Z

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mContext"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "mContext.filesDir"

    invoke-static {v0, v2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "jobscheduler"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->cancelAll()V

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;->a:Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->stopSelf()V

    return-void

    :cond_0
    new-instance v0, La/i;

    const-string v1, "null cannot be cast to non-null type android.app.job.JobScheduler"

    invoke-direct {v0, v1}, La/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final j()V
    .locals 11

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/h;->a(Landroid/content/Context;I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const-string v1, "com.samsung.android.hmt.vrsvc"

    const-string v2, "com.samsung.android.hmt.vrsvc.setup.VRSetupWizardStub"

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.app.vrsetupwizardstub"

    const-string v2, "com.samsung.android.app.vrsetupwizardstub.ui.VRSetupWizardStub"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->c()Z

    move-result v0

    const-string v1, "mNotificationHelper.getU\u2026AUTO_CANCEL\n            )"

    const v2, 0x7f0f00d2

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->e()Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f00df

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->e()Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f001f

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d()Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v2, 0x62

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private final k()V
    .locals 11

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/h;->a(Landroid/content/Context;I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const-string v1, "com.samsung.android.hmt.vrsvc"

    const-string v2, "com.samsung.android.hmt.vrsvc.setup.VRSetupWizardStub"

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.app.vrsetupwizardstub"

    const-string v2, "com.samsung.android.app.vrsetupwizardstub.ui.VRSetupWizardStub"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->e()Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    move-result-object v3

    const v0, 0x7f0f0068

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0f00cf

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d()Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p2, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onError"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/16 p2, 0xdc

    if-eq p1, p2, :cond_0

    const/16 p2, 0xf0

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->k()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i()V

    return-void
.end method

.method public a(J)V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->b:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Stop by app running"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->g:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Update Available, No WiFi, stop"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->k()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i()V

    return-void

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 p1, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->p:J

    add-long/2addr v2, p1

    const/16 p1, 0x64

    int-to-long p1, p1

    mul-long v2, v2, p1

    div-long/2addr v2, v0

    long-to-int p1, v2

    move v5, p1

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->e()Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    move-result-object v0

    const/4 v1, 0x0

    const p1, 0x7f0f00d1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d()Landroid/app/NotificationManager;

    move-result-object p2

    const/16 v0, 0x65

    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->b:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Stop by app running"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i()V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->p:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->p:J

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageItemDataArrayList"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->b:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Stop by app running"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Updates : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " No updates available"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/h;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->g:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->g()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Updates available, set Notification"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->j()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->stopSelf()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->n:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->n:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    iget-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->o:J

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->o:J

    goto :goto_0

    :cond_5
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.app.vrsetupwizard"

    invoke-static {v2, v3}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-static {v1, v2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object p1

    const-string v1, "mContext"

    invoke-static {p1, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f:Z

    const-string v3, "manual_update"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/u;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->e:Z

    const-string v2, "run_by_vrsvc"

    invoke-static {p1, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/u;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->o:J

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a_(Ljava/lang/String;)V
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->n:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/g;)V

    return-void

    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Collection contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public b_()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Stop by app running"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public c_()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Silent update Complete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/h;->a(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mContext"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.samsung.android.app.vr.home/com.samsung.android.app.vr.home.HomeActivity"

    const-string v3, "vr_system_uri"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/r;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vr_home_uri"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/r;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i()V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 10

    const-string v0, "params"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/h;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " SetupWizard is not completed, stop UpdateJobService"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->stopSelf()V

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i()V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v2, "false"

    if-eqz v0, :cond_2

    const-string v3, "run_by_vrsvc"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    const-string v3, "true"

    invoke-static {v0, v3}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->e:Z

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "manual_update"

    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    invoke-static {p1, v3}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f:Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    const/16 v2, 0x5d

    const-string v3, "][Wifi : "

    const-string v4, "][AutoUpdateEndabled:"

    const-string v5, "][isManual:"

    const-string v6, "][RunbyVRSVC:"

    const-string v7, "[VRSW] onStartJob(), [Scenario:"

    if-lt p1, v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object p1

    const-string v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->e:Z

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f:Z

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->g()Z

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->g(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "][Bucket:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBucket()I

    move-result p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance p1, La/i;

    const-string v0, "null cannot be cast to non-null type android.app.usage.UsageStatsManager"

    invoke-direct {p1, v0}, La/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->e:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->g()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->g(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f:Z

    const-string v0, "2"

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->e()Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    move-result-object v2

    const/4 v3, 0x0

    const p1, 0x7f0f00d1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d()Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->g:Ljava/lang/String;

    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->h()V

    goto :goto_6

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->f()I

    move-result p1

    const-string v2, " Wi-Fi is not connected, Stop"

    const-string v3, "1"

    if-ne p1, v1, :cond_9

    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->e:Z

    if-eqz p1, :cond_7

    :goto_4
    iput-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->g:Ljava/lang/String;

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i()V

    return v1

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->g()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object p1

    const-string v4, "vrsw_update_settings_update_check_mode"

    invoke-static {p1, v4, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "Pref.getString(\n        \u2026NLY\n                    )"

    invoke-static {p1, v4}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->g:Ljava/lang/String;

    invoke-static {p1, v0}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    :goto_5
    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->g:Ljava/lang/String;

    invoke-static {p1, v3}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    :goto_6
    return v1

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i()V

    return v1

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Auto update disabled, Stop"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->i()V

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
