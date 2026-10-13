.class public final synthetic Lq40;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final w:LD40;

.field public final x:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(LD40;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq40;->w:LD40;

    iput-object p2, p0, Lq40;->x:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lq40;->w:LD40;

    iget-object p2, p0, Lq40;->x:Lorg/chromium/base/Callback;

    if-eqz p1, :cond_0

    long-to-int p3, p4

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p1, LD40;->d:LnM0;

    invoke-virtual {p1}, LnM0;->dismiss()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
