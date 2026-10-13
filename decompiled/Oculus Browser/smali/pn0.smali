.class public final synthetic Lpn0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Z


# direct methods
.method public constructor <init>(IJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpn0;->a:I

    iput-wide p2, p0, Lpn0;->b:J

    iput-boolean p4, p0, Lpn0;->c:Z

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lpn0;->a:I

    check-cast p1, Lorg/chromium/content_public/browser/LoadUrlParams;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 3
    iget-object v2, p1, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    .line 4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    iget-object p1, p1, Lorg/chromium/content_public/browser/LoadUrlParams;->f:Ljava/util/Map;

    .line 6
    invoke-static {p1, v0}, LqZ;->a(Ljava/util/Map;Landroid/content/Intent;)V

    .line 7
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.android.browser.application_id"

    .line 8
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 11
    invoke-static {v0, p1}, LqZ;->b(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    .line 14
    :goto_0
    new-instance v0, LhJ0;

    invoke-direct {v0, p1}, LhJ0;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    .line 15
    new-instance p1, LiJ0;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, LiJ0;-><init>(Z)V

    const/4 v1, 0x2

    const/4 v2, -0x1

    .line 16
    invoke-virtual {p1, v0, v1, v2}, LiJ0;->a(LhJ0;II)V

    :goto_1
    return-void
.end method
