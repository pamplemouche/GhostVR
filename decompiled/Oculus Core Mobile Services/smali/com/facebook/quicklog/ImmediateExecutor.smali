.class public Lcom/facebook/quicklog/ImmediateExecutor;
.super Ljava/lang/Object;
.source "ImmediateExecutor.java"

# interfaces
.implements Lcom/facebook/quicklog/BackgroundExecution;


# static fields
.field private static sInstance:Lcom/facebook/quicklog/ImmediateExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/quicklog/ImmediateExecutor;->sInstance:Lcom/facebook/quicklog/ImmediateExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/facebook/quicklog/ImmediateExecutor;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/facebook/quicklog/ImmediateExecutor;->sInstance:Lcom/facebook/quicklog/ImmediateExecutor;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/facebook/quicklog/ImmediateExecutor;

    invoke-direct {v0}, Lcom/facebook/quicklog/ImmediateExecutor;-><init>()V

    sput-object v0, Lcom/facebook/quicklog/ImmediateExecutor;->sInstance:Lcom/facebook/quicklog/ImmediateExecutor;

    .line 15
    :cond_0
    sget-object v0, Lcom/facebook/quicklog/ImmediateExecutor;->sInstance:Lcom/facebook/quicklog/ImmediateExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 24
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 25
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
