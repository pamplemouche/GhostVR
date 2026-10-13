.class public LJC0;
.super Ljava/util/LinkedList;
.source "PG"


# direct methods
.method public synthetic constructor <init>(LAC0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIC0;

    invoke-virtual {v0, p0}, LIC0;->a(LJC0;)V

    :cond_0
    return-void
.end method
