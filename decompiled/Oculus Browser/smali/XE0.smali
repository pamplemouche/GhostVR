.class public final synthetic LXE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LjF0;


# direct methods
.method public constructor <init>(LjF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXE0;->w:LjF0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, LXE0;->w:LjF0;

    if-eqz p1, :cond_0

    const-string v0, "Signin_Undo_Signin"

    .line 1
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, LjF0;->K0:Z

    .line 3
    check-cast p1, Lorg/chromium/chrome/browser/signin/SigninFragment;

    .line 4
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
