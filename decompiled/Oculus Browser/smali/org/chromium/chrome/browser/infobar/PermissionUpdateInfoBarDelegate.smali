.class public Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKc1;


# instance fields
.field public final a:Lorg/chromium/content_public/browser/WebContents;

.field public final b:[Ljava/lang/String;

.field public c:J

.field public d:LkT;


# direct methods
.method public constructor <init>(JLorg/chromium/content_public/browser/WebContents;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->c:J

    .line 3
    iput-object p4, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->b:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->a:Lorg/chromium/content_public/browser/WebContents;

    return-void
.end method

.method public static create(JLorg/chromium/content_public/browser/WebContents;[Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;-><init>(JLorg/chromium/content_public/browser/WebContents;[Ljava/lang/String;)V

    return-object v0
.end method

.method private onNativeDestroyed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->c:J

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->d:LkT;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->a(LkT;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->d:LkT;

    :cond_0
    return-void
.end method

.method private requestPermissions()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->a:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-wide v2, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->c:J

    .line 3
    invoke-static {v2, v3, p0, v1}, LJ/N;->M7uW1If6(JLjava/lang/Object;Z)V

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    :goto_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->b:[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 5
    aget-object v4, v4, v2

    .line 6
    invoke-virtual {v0, v4}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->b:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 7
    invoke-virtual {v0, v4}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    and-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v3, :cond_4

    .line 9
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;LKc1;)V

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    .line 10
    iget-wide v2, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->c:J

    .line 11
    invoke-static {v2, v3, p0, v1}, LJ/N;->M7uW1If6(JLjava/lang/Object;Z)V

    return-void

    .line 12
    :cond_5
    new-instance v0, Lag0;

    invoke-direct {v0, p0}, Lag0;-><init>(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->d:LkT;

    .line 13
    invoke-static {v0, v2}, Lorg/chromium/base/ApplicationStatus;->a(LkT;Landroid/app/Activity;)V

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package:"

    .line 15
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->a:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 3
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->b:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 4
    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 5
    :goto_1
    iget-wide v2, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 6
    iget-wide v2, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->c:J

    .line 7
    invoke-static {v2, v3, p0, v1}, LJ/N;->M7uW1If6(JLjava/lang/Object;Z)V

    :cond_2
    return-void
.end method

.method public a([Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->a()V

    return-void
.end method
