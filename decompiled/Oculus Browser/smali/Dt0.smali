.class public LDt0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LBd1;

.field public final b:LFt0;

.field public final c:Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogCustomView;

.field public d:Lle1;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LFt0;

    invoke-direct {v0}, LFt0;-><init>()V

    iput-object v0, p0, LDt0;->b:LFt0;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e014a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogCustomView;

    iput-object v0, p0, LDt0;->c:Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogCustomView;

    .line 4
    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object p1

    iput-object p1, p0, LDt0;->a:LBd1;

    return-void
.end method
