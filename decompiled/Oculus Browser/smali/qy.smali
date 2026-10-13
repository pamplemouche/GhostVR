.class public Lqy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/Object;

.field public final d:I


# direct methods
.method public constructor <init>(JLjava/lang/String;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lqy;->a:J

    .line 3
    iput-object p3, p0, Lqy;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lqy;->c:[Ljava/lang/Object;

    .line 5
    iput p5, p0, Lqy;->d:I

    return-void
.end method
