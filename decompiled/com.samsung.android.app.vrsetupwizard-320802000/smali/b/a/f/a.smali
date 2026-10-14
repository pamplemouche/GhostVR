.class public interface abstract Lb/a/f/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/a/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/f/b;

    invoke-direct {v0}, Lb/a/f/b;-><init>()V

    sput-object v0, Lb/a/f/a;->a:Lb/a/f/a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/io/File;)Z
.end method

.method public abstract c(Ljava/io/File;)J
.end method
