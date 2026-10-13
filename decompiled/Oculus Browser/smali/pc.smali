.class public Lpc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lrc;


# direct methods
.method public constructor <init>(Lrc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc;->w:Lrc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lpc;->w:Lrc;

    iget-object v0, v0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
