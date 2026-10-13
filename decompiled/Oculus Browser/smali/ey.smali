.class public final Ley;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/StringBuilder;

.field public final c:I

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ley;->d:Z

    .line 3
    iput-boolean v0, p0, Ley;->e:Z

    .line 4
    iput p1, p0, Ley;->c:I

    .line 5
    iput-object p2, p0, Ley;->a:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Ley;->b:Ljava/lang/StringBuilder;

    return-void
.end method
