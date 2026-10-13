.class public LSe0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static b:LSe0;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LSe0;->a:Ljava/util/List;

    return-void
.end method
