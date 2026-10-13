.class public final Ljk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LOs;


# instance fields
.field public a:LHm;

.field public b:J

.field public final synthetic c:Lok;


# direct methods
.method public constructor <init>(Lok;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ljk;->c:Lok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Ljk;->b:J

    return-void
.end method
