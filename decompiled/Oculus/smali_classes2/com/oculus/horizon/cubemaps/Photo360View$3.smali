.class Lcom/oculus/horizon/cubemaps/Photo360View$3;
.super Ljava/lang/Object;
.source "Photo360View.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cubemaps/Photo360View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cubemaps/Photo360View;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oculus/horizon/cubemaps/Photo360View$3;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$3;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/cubemaps/Photo360View;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method
