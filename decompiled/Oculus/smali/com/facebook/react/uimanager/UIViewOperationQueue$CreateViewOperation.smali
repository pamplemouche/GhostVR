.class final Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;
.super Lcom/facebook/react/uimanager/UIViewOperationQueue$ViewOperation;
.source "UIViewOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/UIViewOperationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreateViewOperation"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mInitialProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mThemedContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field final synthetic this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/ThemedReactContext;ILjava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 4
    .param p5    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .line 169
    invoke-direct {p0, p1, p3}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ViewOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;I)V

    .line 170
    iput-object p2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;->mThemedContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 171
    iput-object p4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;->mClassName:Ljava/lang/String;

    .line 172
    iput-object p5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;->mInitialProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 173
    const-wide/32 v0, 0x2000000

    const-string v2, "createView"

    iget v3, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;->mTag:I

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/systrace/Systrace;->startAsyncFlow(JLjava/lang/String;I)V

    .line 174
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 178
    const-wide/32 v0, 0x2000000

    const-string v2, "createView"

    iget v3, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;->mTag:I

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/systrace/Systrace;->endAsyncFlow(JLjava/lang/String;I)V

    .line 179
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->access$000(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;->mThemedContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;->mTag:I

    iget-object v3, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;->mClassName:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;->mInitialProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->createView(Lcom/facebook/react/uimanager/ThemedReactContext;ILjava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 180
    return-void
.end method
