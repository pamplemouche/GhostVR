.class public Lcom/oculus/vrshell/sharedprefs/PrefKey;
.super Ljava/lang/Object;
.source "PrefKey.java"


# instance fields
.field private mFullKey:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mParent:Lcom/oculus/vrshell/sharedprefs/PrefKey;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/sharedprefs/PrefKey;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oculus/vrshell/sharedprefs/PrefKey;->mParent:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 23
    iput-object p2, p0, Lcom/oculus/vrshell/sharedprefs/PrefKey;->mKey:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/oculus/vrshell/sharedprefs/PrefKey;->mParent:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 17
    iput-object p1, p0, Lcom/oculus/vrshell/sharedprefs/PrefKey;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 36
    new-instance v0, Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-direct {v0, p0, p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;-><init>(Lcom/oculus/vrshell/sharedprefs/PrefKey;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFullKey()Ljava/lang/String;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/oculus/vrshell/sharedprefs/PrefKey;->mFullKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/oculus/vrshell/sharedprefs/PrefKey;->mParent:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrshell/sharedprefs/PrefKey;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/vrshell/sharedprefs/PrefKey;->mParent:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-virtual {v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/vrshell/sharedprefs/PrefKey;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oculus/vrshell/sharedprefs/PrefKey;->mFullKey:Ljava/lang/String;

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/oculus/vrshell/sharedprefs/PrefKey;->mFullKey:Ljava/lang/String;

    return-object v0
.end method

.method public startsWith(Lcom/oculus/vrshell/sharedprefs/PrefKey;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
