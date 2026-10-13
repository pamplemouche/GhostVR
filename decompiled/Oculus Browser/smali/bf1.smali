.class public Lbf1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lef1;


# direct methods
.method public constructor <init>(Lef1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbf1;->w:Lef1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbf1;->w:Lef1;

    .line 2
    iget-object v0, v0, Lef1;->B:Landroid/widget/PopupWindow;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf1;->w:Lef1;

    .line 4
    iget-object v0, v0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
