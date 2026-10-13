.class public abstract LIe1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:LHe1;


# direct methods
.method public constructor <init>(ILHe1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LIe1;->a:I

    .line 3
    iput-object p2, p0, LIe1;->b:LHe1;

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract b(I)V
.end method
