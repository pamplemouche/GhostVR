.class public final synthetic Lqz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LLx;


# instance fields
.field public final a:Lrz;


# direct methods
.method public constructor <init>(Lrz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqz;->a:Lrz;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqz;->a:Lrz;

    invoke-virtual {v0}, Lrz;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
