.class public Lcom/oculus/browser/Experimentation$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/Experimentation;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/Experimentation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/Experimentation$1;->this$0:Lcom/oculus/browser/Experimentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Experimentation"

    const-string v1, "re-fetching experiment data"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/Experimentation$1;->this$0:Lcom/oculus/browser/Experimentation;

    invoke-static {v0}, Lcom/oculus/browser/Experimentation;->access$000(Lcom/oculus/browser/Experimentation;)V

    return-void
.end method
