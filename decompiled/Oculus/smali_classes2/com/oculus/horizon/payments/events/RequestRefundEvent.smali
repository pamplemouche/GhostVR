.class public Lcom/oculus/horizon/payments/events/RequestRefundEvent;
.super Ljava/lang/Object;
.source "RequestRefundEvent.java"


# instance fields
.field public final app:Lcom/oculus/library/model/App;

.field public final libraryCreationTimestamp:J


# direct methods
.method public constructor <init>(Lcom/oculus/library/model/App;J)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oculus/horizon/payments/events/RequestRefundEvent;->app:Lcom/oculus/library/model/App;

    .line 13
    iput-wide p2, p0, Lcom/oculus/horizon/payments/events/RequestRefundEvent;->libraryCreationTimestamp:J

    .line 14
    return-void
.end method
