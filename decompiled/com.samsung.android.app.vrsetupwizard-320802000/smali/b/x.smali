.class public interface abstract Lb/x;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/y;

    invoke-direct {v0}, Lb/y;-><init>()V

    sput-object v0, Lb/x;->a:Lb/x;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
