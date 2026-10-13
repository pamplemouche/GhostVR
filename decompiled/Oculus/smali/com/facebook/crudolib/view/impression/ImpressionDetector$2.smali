.class Lcom/facebook/crudolib/view/impression/ImpressionDetector$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ImpressionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crudolib/view/impression/ImpressionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/crudolib/view/impression/ImpressionDetector;


# direct methods
.method constructor <init>(Lcom/facebook/crudolib/view/impression/ImpressionDetector;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector$2;->this$0:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector$2;->this$0:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 190
    return-void
.end method
