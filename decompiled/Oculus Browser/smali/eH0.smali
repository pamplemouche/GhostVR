.class public LeH0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LxU;


# static fields
.field public static final x:Ljava/lang/Class;

.field public static final y:Ljava/lang/Object;


# instance fields
.field public final w:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LeH0;

    sput-object v0, LeH0;->x:Ljava/lang/Class;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LeH0;->y:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LeH0;->w:Ljava/util/Map;

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)LeH0;
    .locals 2

    .line 3
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 4
    sget-object v0, LeH0;->x:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, LeH0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, LeH0;->x:Ljava/lang/Class;

    new-instance v1, LeH0;

    invoke-direct {v1}, LeH0;-><init>()V

    invoke-virtual {p0, v0, v1}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object p0

    move-object v0, p0

    check-cast v0, LeH0;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LeH0;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, LeH0;->y:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method
