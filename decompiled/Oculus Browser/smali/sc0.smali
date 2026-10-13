.class public Lsc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic w:Lwc0;


# direct methods
.method public constructor <init>(Lwc0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsc0;->w:Lwc0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-ne p3, p2, :cond_0

    return p1

    .line 2
    :cond_0
    iget-object p3, p0, Lsc0;->w:Lwc0;

    .line 3
    iget-object v0, p3, Lwc0;->J:Lgc0;

    if-nez v0, :cond_1

    return p1

    .line 4
    :cond_1
    iget-boolean v0, p3, Lwc0;->N:Z

    if-eqz v0, :cond_2

    .line 5
    iput-boolean p1, p3, Lwc0;->N:Z

    .line 6
    invoke-static {p3, p2}, Lwc0;->a(Lwc0;Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p3, Lwc0;->I:Lorg/chromium/ui/base/WindowAndroid;

    .line 8
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object p1

    iget-object p3, p0, Lsc0;->w:Lwc0;

    iget-object p3, p3, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {p1, p3}, Lrc1;->a(Landroid/view/View;)Z

    .line 9
    iget-object p1, p0, Lsc0;->w:Lwc0;

    .line 10
    iget-object p1, p1, Lwc0;->J:Lgc0;

    .line 11
    iget-wide v0, p1, Lgc0;->a:J

    .line 12
    invoke-static {v0, v1, p1}, LJ/N;->M__7TNNT(JLjava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lsc0;->w:Lwc0;

    .line 14
    iput-boolean p2, p1, Lwc0;->S:Z

    :goto_0
    return p2
.end method
