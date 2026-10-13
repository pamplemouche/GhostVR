.class Lcom/facebook/react/views/text/ReactTextView$1;
.super Ljava/lang/Object;
.source "ReactTextView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/text/ReactTextView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/text/ReactTextView;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/text/ReactTextView;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextView$1;->this$0:Lcom/facebook/react/views/text/ReactTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 243
    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    .line 244
    check-cast p2, Lcom/facebook/react/bridge/WritableMap;

    .line 245
    const-string v0, "index"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "index"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
