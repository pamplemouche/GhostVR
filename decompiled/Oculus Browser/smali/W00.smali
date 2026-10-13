.class public final synthetic LW00;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final w:La10;


# direct methods
.method public constructor <init>(La10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW00;->w:La10;

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p1, p0, LW00;->w:La10;

    if-eqz p1, :cond_1

    const/4 p3, 0x6

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    .line 1
    iget-object p2, p1, La10;->x:Lle1;

    invoke-virtual {p1, p2, v0}, La10;->b(Lle1;I)V

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
