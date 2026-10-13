.class public final synthetic Lg10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final w:Lq10;


# direct methods
.method public constructor <init>(Lq10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg10;->w:Lq10;

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p1, p0, Lg10;->w:Lq10;

    if-eqz p1, :cond_2

    const/4 p3, 0x6

    const/4 v0, 0x0

    if-ne p2, p3, :cond_1

    .line 1
    iget-object p2, p1, Lq10;->x:Lle1;

    sget-object p3, LEd1;->i:Lhe1;

    invoke-virtual {p2, p3}, Lle1;->a(Lce1;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p1, Lq10;->x:Lle1;

    invoke-virtual {p1, p2, v0}, Lq10;->b(Lle1;I)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
