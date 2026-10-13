.class public Lcom/facebook/rti/common/thrift/ThriftProperty;
.super Ljava/lang/Object;
.source "ThriftProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final id:S

.field public final key:Ljava/lang/String;

.field public final type:B


# direct methods
.method public constructor <init>(Ljava/lang/String;BS)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/facebook/rti/common/thrift/ThriftProperty;->key:Ljava/lang/String;

    .line 13
    iput-byte p2, p0, Lcom/facebook/rti/common/thrift/ThriftProperty;->type:B

    .line 14
    iput-short p3, p0, Lcom/facebook/rti/common/thrift/ThriftProperty;->id:S

    .line 15
    return-void
.end method
