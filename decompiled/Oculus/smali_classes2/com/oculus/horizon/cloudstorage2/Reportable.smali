.class public abstract Lcom/oculus/horizon/cloudstorage2/Reportable;
.super Ljava/lang/Object;
.source "Reportable.java"

# interfaces
.implements Lcom/oculus/horizon/cloudstorage2/Reporter;


# instance fields
.field private mReporter:Lcom/oculus/horizon/cloudstorage2/Reporter;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/Reportable;->mReporter:Lcom/oculus/horizon/cloudstorage2/Reporter;

    .line 10
    return-void
.end method


# virtual methods
.method public varargs report(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/Reportable;->mReporter:Lcom/oculus/horizon/cloudstorage2/Reporter;

    invoke-interface {v0, p1, p2}, Lcom/oculus/horizon/cloudstorage2/Reporter;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void
.end method
