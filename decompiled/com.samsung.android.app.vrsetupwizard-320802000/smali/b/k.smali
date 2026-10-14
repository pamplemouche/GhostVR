.class public final Lb/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/k;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lb/j;
    .locals 3

    new-instance v0, Lb/j;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lb/k;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/j;-><init>(Ljava/util/Set;Lb/a/i/b;)V

    return-object v0
.end method
