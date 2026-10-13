.class public Lcom/oculus/browser/StoryLogging$StoryInfo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public index:I

.field public storyId:Ljava/lang/String;

.field public final synthetic this$0:Lcom/oculus/browser/StoryLogging;

.field public traceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/StoryLogging;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/StoryLogging$StoryInfo;->this$0:Lcom/oculus/browser/StoryLogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/oculus/browser/StoryLogging$StoryInfo;->storyId:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/oculus/browser/StoryLogging$StoryInfo;->traceId:Ljava/lang/String;

    .line 4
    iput p4, p0, Lcom/oculus/browser/StoryLogging$StoryInfo;->index:I

    return-void
.end method
