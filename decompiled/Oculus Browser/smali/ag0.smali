.class public Lag0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkT;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lag0;->w:Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 2

    const/4 p1, 0x6

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    .line 1
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->a(LkT;)V

    .line 2
    iget-object p1, p0, Lag0;->w:Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;

    .line 3
    iput-object v0, p1, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->d:LkT;

    .line 4
    iget-wide v0, p1, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->c:J

    const/4 p2, 0x0

    .line 5
    invoke-static {v0, v1, p1, p2}, LJ/N;->M7uW1If6(JLjava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 6
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->a(LkT;)V

    .line 7
    iget-object p1, p0, Lag0;->w:Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;

    .line 8
    iput-object v0, p1, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->d:LkT;

    .line 9
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->a()V

    :cond_1
    :goto_0
    return-void
.end method
