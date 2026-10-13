.class public LIk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LE01;


# instance fields
.field public final synthetic a:LLk0;


# direct methods
.method public constructor <init>(LLk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LIk0;->a:LLk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, LIk0;->a:LLk0;

    .line 2
    iget v1, v0, LLk0;->b:I

    const/4 v2, 0x1

    if-ge v2, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput v2, v0, LLk0;->b:I

    :goto_0
    return-void
.end method
