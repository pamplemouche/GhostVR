.class public Lqc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic w:Lwc0;


# direct methods
.method public constructor <init>(Lwc0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqc0;->w:Lwc0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lqc0;->w:Lwc0;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lwc0;->S:Z

    if-nez p2, :cond_1

    .line 3
    iget-object p1, p1, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {p1}, Lze;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lqc0;->w:Lwc0;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p1, Lwc0;->N:Z

    .line 6
    :cond_0
    iget-object p1, p0, Lqc0;->w:Lwc0;

    .line 7
    iget-object p1, p1, Lwc0;->I:Lorg/chromium/ui/base/WindowAndroid;

    .line 8
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object p1

    iget-object p2, p0, Lqc0;->w:Lwc0;

    iget-object p2, p2, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {p1, p2}, Lrc1;->a(Landroid/view/View;)Z

    :cond_1
    return-void
.end method
