.class public Lcom/oculus/library/utils/app/ContentValueUnpack;
.super Ljava/lang/Object;
.source "ContentValueUnpack.java"


# instance fields
.field public final app:Lcom/oculus/library/model/App;

.field public final missingColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oculus/library/model/App;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/library/model/App;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/oculus/library/utils/app/ContentValueUnpack;->app:Lcom/oculus/library/model/App;

    .line 14
    iput-object p2, p0, Lcom/oculus/library/utils/app/ContentValueUnpack;->missingColumns:Ljava/util/Set;

    return-void
.end method
