.class final Lb/v;
.super Ljava/lang/Object;

# interfaces
.implements Lb/u;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/ai;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ai;",
            ")",
            "Ljava/util/List<",
            "Lb/t;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/ai;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ai;",
            "Ljava/util/List<",
            "Lb/t;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
