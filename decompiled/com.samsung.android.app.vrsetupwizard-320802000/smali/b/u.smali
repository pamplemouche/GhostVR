.class public interface abstract Lb/u;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/v;

    invoke-direct {v0}, Lb/v;-><init>()V

    sput-object v0, Lb/u;->a:Lb/u;

    return-void
.end method


# virtual methods
.method public abstract a(Lb/ai;)Ljava/util/List;
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
.end method

.method public abstract a(Lb/ai;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ai;",
            "Ljava/util/List<",
            "Lb/t;",
            ">;)V"
        }
    .end annotation
.end method
