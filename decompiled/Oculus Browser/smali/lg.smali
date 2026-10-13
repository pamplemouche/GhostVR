.class public Llg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lmg;


# direct methods
.method public constructor <init>(Lmg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llg;->w:Lmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Llg;->w:Lmg;

    iget-object v0, v0, Lmg;->y:Lpf;

    if-eqz v0, :cond_0

    invoke-static {v0}, LA7;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llg;->w:Lmg;

    iget-object v0, v0, Lmg;->y:Lpf;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Llg;->w:Lmg;

    iget-object v1, v1, Lmg;->y:Lpf;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Llg;->w:Lmg;

    iget-object v0, v0, Lmg;->y:Lpf;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Llg;->w:Lmg;

    iget v2, v1, Lmg;->K:I

    if-gt v0, v2, :cond_0

    .line 4
    iget-object v0, v1, Lmg;->X:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 5
    iget-object v0, p0, Llg;->w:Lmg;

    invoke-virtual {v0}, Lmg;->a()V

    :cond_0
    return-void
.end method
