.class public Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;
.super Ljava/lang/Object;
.source "FunnelBackupStorageFileImpl.java"

# interfaces
.implements Lcom/facebook/funnellogger/core/FunnelBackupStorage;


# instance fields
.field private final mBackupFile:Ljava/io/File;

.field private final mFunnelDefinitionAccessor:Lcom/facebook/funnellogger/core/FunnelDefinitionAccessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinitionAccessor;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1, p2}, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->createBackupFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->mBackupFile:Ljava/io/File;

    .line 58
    iput-object p3, p0, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->mFunnelDefinitionAccessor:Lcom/facebook/funnellogger/core/FunnelDefinitionAccessor;

    .line 59
    return-void
.end method

.method private static createBackupFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, "funnel_backup"

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 70
    new-instance v1, Ljava/io/File;

    const-string v2, "backup_for_all"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 65
    :cond_0
    const-string p1, "default"

    goto :goto_0
.end method

.method private readFunnel(Ljava/io/DataInputStream;)Lcom/facebook/funnellogger/core/Funnel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-static {}, Lcom/facebook/funnellogger/core/Funnel;->aquireBuilder()Lcom/facebook/funnellogger/core/Funnel$Builder;

    move-result-object v3

    move v0, v2

    .line 211
    :goto_0
    if-nez v0, :cond_2

    .line 212
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 213
    packed-switch v1, :pswitch_data_0

    .line 250
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while loading funnels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->mFunnelDefinitionAccessor:Lcom/facebook/funnellogger/core/FunnelDefinitionAccessor;

    .line 216
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/facebook/funnellogger/core/FunnelDefinitionAccessor;->getFunnelDefinition(Ljava/lang/String;)Lcom/facebook/funnellogger/core/FunnelDefinition;

    move-result-object v1

    .line 215
    invoke-virtual {v3, v1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setFunnelDefinition(Lcom/facebook/funnellogger/core/FunnelDefinition;)Lcom/facebook/funnellogger/core/Funnel$Builder;

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setFunnelInstanceId(J)Lcom/facebook/funnellogger/core/Funnel$Builder;

    goto :goto_0

    .line 222
    :pswitch_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setSamplingRate(I)Lcom/facebook/funnellogger/core/Funnel$Builder;

    goto :goto_0

    .line 225
    :pswitch_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setCreatedTimestamp(J)Lcom/facebook/funnellogger/core/Funnel$Builder;

    goto :goto_0

    .line 228
    :pswitch_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setLastUpdatedTimestamp(J)Lcom/facebook/funnellogger/core/Funnel$Builder;

    goto :goto_0

    .line 231
    :pswitch_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 232
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 233
    :goto_1
    if-ge v1, v4, :cond_0

    .line 234
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 236
    :cond_0
    invoke-virtual {v3, v5}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setTags(Ljava/util/List;)Lcom/facebook/funnellogger/core/Funnel$Builder;

    goto :goto_0

    .line 239
    :pswitch_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 240
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 241
    :goto_2
    if-ge v1, v4, :cond_1

    .line 242
    invoke-static {p1}, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->readFunnelAction(Ljava/io/DataInputStream;)Lcom/facebook/funnellogger/core/Funnel$Action;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 244
    :cond_1
    invoke-virtual {v3, v5}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setActions(Ljava/util/List;)Lcom/facebook/funnellogger/core/Funnel$Builder;

    goto/16 :goto_0

    .line 247
    :pswitch_8
    const/4 v0, 0x1

    .line 248
    goto/16 :goto_0

    .line 253
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/funnellogger/core/Funnel$Builder;->build()Lcom/facebook/funnellogger/core/Funnel;

    move-result-object v0

    return-object v0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private static readFunnelAction(Ljava/io/DataInputStream;)Lcom/facebook/funnellogger/core/Funnel$Action;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    move v1, v0

    move-object v3, v2

    move-object v4, v2

    .line 266
    :goto_0
    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 268
    packed-switch v5, :pswitch_data_0

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while loading funnels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :pswitch_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 273
    :pswitch_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 276
    :pswitch_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 279
    :pswitch_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    goto :goto_0

    .line 282
    :pswitch_4
    const/4 v0, 0x1

    .line 283
    goto :goto_0

    .line 288
    :cond_0
    new-instance v0, Lcom/facebook/funnellogger/core/Funnel$Action;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/funnellogger/core/Funnel$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private static writeFunnel(Ljava/io/DataOutputStream;Lcom/facebook/funnellogger/core/Funnel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 114
    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 117
    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getInstanceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 119
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 120
    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getSamplingRate()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 122
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 123
    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getCreatedTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 125
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 126
    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getLastUpdatedTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 128
    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getTags()Ljava/util/List;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getActions()Ljava/util/List;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/funnellogger/core/Funnel$Action;

    .line 142
    invoke-static {p0, v0}, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->writeFunnelAction(Ljava/io/DataOutputStream;Lcom/facebook/funnellogger/core/Funnel$Action;)V

    goto :goto_1

    .line 146
    :cond_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 147
    return-void
.end method

.method private static writeFunnelAction(Ljava/io/DataOutputStream;Lcom/facebook/funnellogger/core/Funnel$Action;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2c0

    .line 152
    const/16 v0, 0x2bd

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 153
    iget-object v0, p1, Lcom/facebook/funnellogger/core/Funnel$Action;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 155
    const/16 v0, 0x2be

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 156
    iget v0, p1, Lcom/facebook/funnellogger/core/Funnel$Action;->mRelativeTimeStamp:I

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 158
    iget-object v0, p1, Lcom/facebook/funnellogger/core/Funnel$Action;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    const/16 v0, 0x2bf

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 160
    iget-object v0, p1, Lcom/facebook/funnellogger/core/Funnel$Action;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p1, Lcom/facebook/funnellogger/core/Funnel$Action;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 165
    iget-object v0, p1, Lcom/facebook/funnellogger/core/Funnel$Action;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    invoke-virtual {v0}, Lcom/facebook/funnellogger/core/PayloadBundle;->getDataJsonStringForInternalUse()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 171
    :cond_1
    :goto_0
    const/16 v0, 0x2c1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 172
    return-void

    .line 166
    :cond_2
    iget-object v0, p1, Lcom/facebook/funnellogger/core/Funnel$Action;->mPayloadJsonString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 168
    iget-object v0, p1, Lcom/facebook/funnellogger/core/Funnel$Action;->mPayloadJsonString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized loadFunnels()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/funnellogger/core/Funnel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 176
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    iget-object v2, p0, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 205
    :goto_0
    monitor-exit p0

    return-object v0

    .line 181
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->mBackupFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 187
    if-eq v3, v6, :cond_1

    .line 188
    const-string v1, "FunnelBackupStorageFileImpl"

    const-string v4, "Expected version %d, found version %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v1, v4, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 192
    :goto_1
    if-ge v1, v3, :cond_3

    .line 193
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-direct {p0, v2}, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->readFunnel(Ljava/io/DataInputStream;)Lcom/facebook/funnellogger/core/Funnel;

    move-result-object v5

    .line 195
    invoke-virtual {v5}, Lcom/facebook/funnellogger/core/Funnel;->getFunnelDefinition()Lcom/facebook/funnellogger/core/FunnelDefinition;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 196
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    :cond_2
    const-string v5, "FunnelBackupStorageFileImpl"

    const-string v6, "Parsed funnel instance with null FunnelDefinition for key: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 202
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    throw v0

    :cond_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 204
    const-string v1, "FunnelBackupStorageFileImpl"

    const-string v2, "Successfully loaded %d funnels from file."

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public saveFunnels(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/funnellogger/core/Funnel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "FunnelBackupStorageFileImpl"

    const-string v1, "Skip the save."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 108
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->mBackupFile:Ljava/io/File;

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".tmp"

    iget-object v2, p0, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->mBackupFile:Ljava/io/File;

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 81
    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 85
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    invoke-direct {v0, v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 90
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 91
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 92
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/funnellogger/core/Funnel;

    invoke-static {v3, v0}, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->writeFunnel(Ljava/io/DataOutputStream;Lcom/facebook/funnellogger/core/Funnel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    throw v0

    :cond_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 99
    monitor-enter p0

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelBackupStorageFileImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 104
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to replace the current preference file!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    const-string v0, "FunnelBackupStorageFileImpl"

    const-string/jumbo v1, "successfully saved %d funnels to file."

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
