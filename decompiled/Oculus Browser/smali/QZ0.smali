.class public LQZ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LRZ0;


# direct methods
.method public constructor <init>(LRZ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQZ0;->w:LRZ0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LQZ0;->w:LRZ0;

    iget-object v0, v0, LRZ0;->w:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object v0, p0, LQZ0;->w:LRZ0;

    iget-object v0, v0, LRZ0;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method
