.class public final Llo0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llo0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Llo0;->a:I

    iput v0, p0, Llo0;->a:I

    .line 4
    iget-object v0, p1, Llo0;->b:Ljava/lang/String;

    iput-object v0, p0, Llo0;->b:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Llo0;->c:Ljava/lang/String;

    iput-object v0, p0, Llo0;->c:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Llo0;->d:Ljava/lang/String;

    iput-object v0, p0, Llo0;->d:Ljava/lang/String;

    .line 7
    iget-boolean v0, p1, Llo0;->e:Z

    iput-boolean v0, p0, Llo0;->e:Z

    .line 8
    iget-boolean p1, p1, Llo0;->f:Z

    iput-boolean p1, p0, Llo0;->f:Z

    return-void
.end method
