.class public Lcom/google/inject/name/Names;
.super Ljava/lang/Object;
.source "Names.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static named(Ljava/lang/String;)Lcom/google/inject/name/Named;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/inject/name/NamedImpl;

    invoke-direct {v0, p0}, Lcom/google/inject/name/NamedImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
