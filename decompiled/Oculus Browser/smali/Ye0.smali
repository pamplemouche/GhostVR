.class public LYe0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, LGZ;->a(I)I

    move-result p1

    iput p1, p0, LYe0;->a:I

    .line 3
    iput-object p2, p0, LYe0;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, LYe0;->c:Ljava/lang/String;

    return-void
.end method
