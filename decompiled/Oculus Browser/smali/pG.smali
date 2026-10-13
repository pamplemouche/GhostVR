.class public abstract LpG;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Iterator;

.field public static final b:Ljava/lang/Iterable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LnG;

    invoke-direct {v0}, LnG;-><init>()V

    sput-object v0, LpG;->a:Ljava/util/Iterator;

    .line 2
    new-instance v0, LoG;

    invoke-direct {v0}, LoG;-><init>()V

    sput-object v0, LpG;->b:Ljava/lang/Iterable;

    return-void
.end method
