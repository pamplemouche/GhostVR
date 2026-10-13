.class public final synthetic Lcom/oculus/browser/WebUIFetcher$$Lambda$0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/oculus/browser/WebUIFetcher$FetcherCallback;


# instance fields
.field public final arg$1:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oculus/browser/WebUIFetcher$$Lambda$0;->arg$1:I

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/oculus/browser/WebUIFetcher$$Lambda$0;->arg$1:I

    invoke-static {v0, p1, p2}, Lcom/oculus/browser/WebUIFetcher;->lambda$fetch$0$WebUIFetcher(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
