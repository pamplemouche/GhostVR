.class public final Llw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final e:Llw;


# instance fields
.field public final a:LeJ;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:LkJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Llw;

    .line 2
    sget-object v1, LkJ;->B:LkJ;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-direct {v0, v3, v3, v1, v2}, Llw;-><init>(LeJ;Ljava/lang/String;LkJ;Z)V

    sput-object v0, Llw;->e:Llw;

    return-void
.end method

.method public constructor <init>(LeJ;Ljava/lang/String;LkJ;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llw;->a:LeJ;

    .line 3
    iput-object p2, p0, Llw;->b:Ljava/lang/String;

    .line 4
    iput-boolean p4, p0, Llw;->c:Z

    .line 5
    iput-object p3, p0, Llw;->d:LkJ;

    return-void
.end method

.method public synthetic constructor <init>(LeJ;Ljava/lang/String;LkJ;ZLkw;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Llw;->a:LeJ;

    .line 8
    iput-object p2, p0, Llw;->b:Ljava/lang/String;

    .line 9
    iput-boolean p4, p0, Llw;->c:Z

    .line 10
    iput-object p3, p0, Llw;->d:LkJ;

    return-void
.end method
