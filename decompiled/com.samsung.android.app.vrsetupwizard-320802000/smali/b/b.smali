.class public interface abstract Lb/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    sput-object v0, Lb/b;->a:Lb/b;

    return-void
.end method


# virtual methods
.method public abstract a(Lb/bh;Lb/bc;)Lb/ax;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
