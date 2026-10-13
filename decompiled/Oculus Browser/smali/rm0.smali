.class public Lrm0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrm0;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lrm0;->b:I

    .line 4
    iput p3, p0, Lrm0;->c:I

    .line 5
    iput-object p4, p0, Lrm0;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lrm0;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lrm0;->a:Ljava/lang/String;

    .line 9
    iput p2, p0, Lrm0;->b:I

    .line 10
    iput p3, p0, Lrm0;->c:I

    .line 11
    iput-object p4, p0, Lrm0;->d:Ljava/lang/String;

    .line 12
    iput-boolean p5, p0, Lrm0;->e:Z

    return-void
.end method
