.class public LkP0;
.super LmP0;
.source "PG"


# instance fields
.field public final synthetic a:LWl0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:LnP0;


# direct methods
.method public constructor <init>(LnP0;LWl0;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LkP0;->e:LnP0;

    iput-object p2, p0, LkP0;->a:LWl0;

    iput-object p3, p0, LkP0;->b:Ljava/lang/String;

    iput-object p4, p0, LkP0;->c:Ljava/lang/String;

    iput p5, p0, LkP0;->d:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LmP0;-><init>(LkP0;)V

    return-void
.end method


# virtual methods
.method public a(LSf1;)V
    .locals 6

    .line 1
    iget-object v0, p0, LkP0;->e:LnP0;

    iget-object v1, p0, LkP0;->a:LWl0;

    iget-object v2, p0, LkP0;->b:Ljava/lang/String;

    .line 2
    check-cast p1, LQf1;

    invoke-virtual {p1}, LQf1;->A()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 3
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 6
    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v4

    .line 7
    :goto_0
    invoke-virtual {v1}, LWl0;->b()Z

    move-result v5

    if-nez v5, :cond_0

    .line 8
    invoke-virtual {v1, v0}, LWl0;->a(Landroid/graphics/Bitmap;)LWl0;

    .line 9
    :cond_0
    invoke-virtual {v1}, LWl0;->c()Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v1, v3, v0, v2}, LWl0;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;)LWl0;

    .line 11
    :cond_1
    invoke-virtual {p1}, LQf1;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v1, p0, LkP0;->e:LnP0;

    iget-object v2, p0, LkP0;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 13
    :try_start_1
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 15
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    const/4 v1, 0x1

    :catch_1
    :cond_2
    if-eqz v1, :cond_3

    .line 16
    iget-object v1, p0, LkP0;->a:LWl0;

    const-string v2, "default_channel_id"

    .line 17
    iput-object v2, v1, LWl0;->g:Ljava/lang/String;

    .line 18
    sget-object v1, LzT;->a:Landroid/content/Context;

    const v2, 0x7f13065b

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 20
    :cond_3
    new-instance v1, Lcm0;

    const/16 v2, 0x9

    iget-object v3, p0, LkP0;->c:Ljava/lang/String;

    iget v5, p0, LkP0;->d:I

    invoke-direct {v1, v2, v3, v5}, Lcm0;-><init>(ILjava/lang/String;I)V

    .line 21
    iget-object v2, p0, LkP0;->c:Ljava/lang/String;

    iget v3, p0, LkP0;->d:I

    iget-object v5, p0, LkP0;->a:LWl0;

    .line 22
    invoke-virtual {v5, v1}, LWl0;->a(Lcm0;)LOl0;

    move-result-object v1

    .line 23
    iget-object v1, v1, LOl0;->a:Landroid/app/Notification;

    .line 24
    invoke-virtual {p1, v2, v3, v1, v4}, LQf1;->a(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_4
    throw v4

    :cond_5
    :goto_1
    const-string p1, "WebApk.Notification.Permission.Status"

    .line 26
    invoke-static {p1, v0}, LfV;->a(Ljava/lang/String;Z)V

    return-void

    .line 27
    :cond_6
    throw v4
.end method
